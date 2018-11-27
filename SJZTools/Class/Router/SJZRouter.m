//
//  SJZRouter.m
//  SJZRouter
//
//  Created by SJZ on 2018/11/6.
//  Copyright © 2018 sjz. All rights reserved.
//

#import "SJZRouter.h"
#import <objc/runtime.h>
#import <objc/message.h>

@implementation SJZRouter

#pragma mark - 创建对象
+ (id)createClass:(NSString *)className {
    if(!(className && className.length > 0)) {
#if DEBUG
        NSLog(@"请输入类名称");
#endif
        return nil;
    }
    
    Class sjzClass = NSClassFromString(className);
    if(!sjzClass) {
#if DEBUG
        NSLog(@"未根据 %@ 找到相应的类", className);
#endif
        return nil;
    }
    
    return [[sjzClass alloc] init];
}

+ (id)createClass:(NSString *)className propertyDic:(NSDictionary *)propertyDic {
    id instance = [self createClass:className];
    if(instance) {
        [propertyDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if([self checkIsExistenceProperty:[instance class] propertyName:key]) {
                // Key给属性赋值
                [instance setValue:obj forKey:key];
            }else {
#if DEBUG
                NSLog(@"%@ 不包括 key = %@ 的属性", className, key);
#endif
            }
        }];
    }
    
    return instance;
}

#pragma mark - 给对象属性赋值
+ (void)setPropertyWithInstance:(id)instance propertyDic:(NSDictionary *)propertyDic {
    if(instance) {
        [propertyDic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            if([self checkIsExistenceProperty:[instance class] propertyName:key]) {
                // Key给属性赋值
                [instance setValue:obj forKey:key];
            }else {
#if DEBUG
                NSLog(@"%@ 不包括 key = %@ 的属性", NSStringFromClass([instance class]), key);
#endif
            }
        }];
    }
}

#pragma mark - 检查 某个类及其父类 是否包含某属性
+ (BOOL)checkIsExistenceProperty:(Class)instanceClass propertyName:(NSString *)propertyName {
    if(!instanceClass) {
        return NO;
    }
    
    if(!(propertyName && propertyName.length > 0)) {
        return NO;
    }
    
    unsigned int propertyCount;
    objc_property_t * properties = class_copyPropertyList(instanceClass, &propertyCount);
    for (int i = 0; i < propertyCount; i++) {
        objc_property_t property = properties[i];
        
        //  属性名转成字符串
        NSString * name = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding];
        
        if([name isEqualToString:propertyName]) {
            free(properties);
            
            return YES;
        }
    }
    free(properties);
    
    // 遍历父类属性
    Class superClass = class_getSuperclass([instanceClass class]);
    if(superClass) {
        return [self checkIsExistenceProperty:superClass propertyName:propertyName];
    }
    
    return NO;
}

#pragma mark - 消息转发调用方法
+ (id)methodSendToInstance:(id)instance selector:(NSString *)selector params:(nullable NSArray *)params {
    
    if(instance && (selector && selector.length > 0)) {
        SEL sel = NSSelectorFromString(selector);
        if([instance respondsToSelector:sel]) {
            NSMethodSignature * signature = [[instance class] instanceMethodSignatureForSelector:sel];
            NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:signature];
            [invocation setSelector:sel];
            [invocation setTarget:instance];
            
            if(params && params.count > 0) {
                // 获取参数个数
                NSInteger paramCount = signature.numberOfArguments;
                if(params.count != paramCount - 2) {
#if DEBUG
                    NSLog(@"params个数 与 函数参数个数不相等");
#endif
                    return nil;
                }
                
                for(int i = 0; i < paramCount - 2; i++) {
                    id param = params[i];
                    
                    if([param isKindOfClass:[NSNull class]]) {
                        param = nil;
                    }
                    
                    // 设置参数
                    [self setMethodArgument:invocation signature:signature param:param atIndex:i + 2];
                }
            }
            
            [invocation invoke]; //perform 的传参表达方式
            
            // 返回值
            if(signature.methodReturnLength != 0) {
                return [self getMethodArgument:invocation signature:signature];
            }
        }
    }
    
    return nil;
}

// 设置函数参数
+ (void)setMethodArgument:(NSInvocation *)invocation signature:(NSMethodSignature *)signature param:(id)param atIndex:(NSInteger)index {
    const char * paramType = [signature getArgumentTypeAtIndex:index];
    
    if(!strcmp(paramType, @encode(id))) {
        [invocation setArgument:&param atIndex:index];
    }else if(!strcmp(paramType, @encode(void (^)(void)))) {
        // block
        [invocation setArgument:&param atIndex:index];
    }else {
        // 不确定类型，C数组、联合、结构体 等
        NSUInteger valueSize = 0;
        NSGetSizeAndAlignment(paramType, &valueSize, NULL);
        
        void * par = NULL;
        par = reallocf(par, valueSize);
        if (@available(iOS 11.0, *)) {
            [param getValue:par size:valueSize];
        } else {
            // Fallback on earlier versions
            [param getValue:par];
        }
        
        [invocation setArgument:par atIndex:index];
    }
}

// 获取方法返回值
+ (id)getMethodArgument:(NSInvocation *)invocation signature:(NSMethodSignature *)signature {
    id returnValue = nil;
    const char * paramType = signature.methodReturnType;
    
    if(!strcmp(paramType, @encode(id))) {
        [invocation getReturnValue:&returnValue];
    }else if(!strcmp(paramType, @encode(void (^)(void)))) {
        [invocation getReturnValue:&returnValue];
    }else {
        // 不确定类型，C数组、联合、结构体 等
        NSUInteger valueSize = 0;
        NSGetSizeAndAlignment(paramType, &valueSize, NULL);
        
        void * par = NULL;
        par = reallocf(par, valueSize);
        [invocation getReturnValue:par];
        returnValue = [NSValue valueWithBytes:par objCType:paramType];
    }
    
    return returnValue;
}

@end

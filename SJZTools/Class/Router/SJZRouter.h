//
//  SJZRouter.h
//  SJZRouter
//
//  Created by SJZ on 2018/11/6.
//  Copyright © 2018 sjz. All rights reserved.
//

/**
 * 初始化类
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define SJZValue(value) [NSValue valueWithBytes:&value objCType:@encode(typeof(value))]

#define SJZGetValue(value, Type)\
({\
NSUInteger valueSize = 0;\
NSGetSizeAndAlignment(@encode(Type), &valueSize, NULL);\
void * par = NULL;\
par = reallocf(par, valueSize);\
if (@available(iOS 11.0, *)) {\
[value getValue:par size:valueSize];\
} else {\
[value getValue:par];\
}\
(*((Type *)par));\
})\

@interface SJZRouter : NSObject

/**
 根据 类名称 创建 对象

 @param className 类名称
 @return 该类对象
 */
+ (id)createClass:(NSString *)className;

/**
 根据 类名称 创建 对象，并给根据属性字典给属性赋值

 @param className 类名称
 @param propertyDic 属性字典
 @return 该类对象
 */
+ (id)createClass:(NSString *)className propertyDic:(NSDictionary *)propertyDic;


/**
 根据 属性字典 给 对象属性 赋值

 @param instance 对象
 @param propertyDic 属性字典
 */
+ (void)setPropertyWithInstance:(id)instance propertyDic:(NSDictionary *)propertyDic;




+ (id)methodSendToInstance:(id)instance selector:(NSString *)selector params:(nullable NSArray *)params;

@end

NS_ASSUME_NONNULL_END

//
//  UIView+gesture.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UIView+gesture.h"
#import "UIGestureRecognizer+block.h"
#import <objc/runtime.h>

#define SJZTapGestureKey @"SJZTapGestureKey"
#define SJZLongPressGestureKey @"SJZLongPressGestureKey"

@implementation UIView (gesture)

#pragma mark - 添加点击手势
- (UITapGestureRecognizer *)tapGesture {
    return objc_getAssociatedObject(self, SJZTapGestureKey);
}

- (void)addTapGestureWithcallBack:(SJZGestureBlock)callBack {
    [self addTapGestureWithConfig:nil callBack:callBack];
}

- (void)addTapGestureWithConfig:(void (^)(UITapGestureRecognizer * _Nonnull))config callBack:(SJZGestureBlock)callBack {
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] init];
    tap.delegate = self;
    tap.gestureBlock = callBack;
    if(config) {
        config(tap);
    }
    [self addGestureRecognizer:tap];
    
    objc_setAssociatedObject(self, SJZTapGestureKey, tap, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - 长按手势
- (UILongPressGestureRecognizer *)longPressGesture {
    return objc_getAssociatedObject(self, SJZLongPressGestureKey);
}

- (void)addLongPressGestureWithCallBack:(SJZGestureBlock)callBack {
    [self addLongPressGestureWithConfig:nil callBack:callBack];
}

- (void)addLongPressGestureWithConfig:(void (^)(UILongPressGestureRecognizer * _Nonnull))config callBack:(SJZGestureBlock)callBack {
    UILongPressGestureRecognizer * longPress = [[UILongPressGestureRecognizer alloc] init];
    longPress.delegate = self;
    longPress.gestureBlock = callBack;
    if(config) {
        config(longPress);
    }
    [self addGestureRecognizer:longPress];
    
    objc_setAssociatedObject(self, SJZLongPressGestureKey, longPress, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

//
//  UIView+gesture.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJZUIModuleTools.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (gesture) <UIGestureRecognizerDelegate>

/**
 点击手势，block需要使用 weakSelf
 */
@property (nonatomic, strong, readonly) UITapGestureRecognizer * tapGesture;
- (void)addTapGestureWithcallBack:(SJZGestureBlock)callBack;
- (void)addTapGestureWithConfig:(void (^ __nullable)(UITapGestureRecognizer *))config callBack:(SJZGestureBlock)callBack;

/**
 长按手势，block需要使用 weakSelf
 */
@property (nonatomic, strong, readonly) UILongPressGestureRecognizer * longPressGesture;
- (void)addLongPressGestureWithCallBack:(SJZGestureBlock)callBack;
- (void)addLongPressGestureWithConfig:(void (^ __nullable)(UILongPressGestureRecognizer *))config callBack:(SJZGestureBlock)callBack;


@end

NS_ASSUME_NONNULL_END

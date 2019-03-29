//
//  UIView+Masonry.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJZUIModuleTools.h"
#import "UIView+gesture.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Masonry)

+ (instancetype)sjz_viewWithBackColor:(UIColor *)color superView:(UIView *)superView constraints:(SJZMASConstraint)block;

+ (instancetype)sjz_viewWithBackColor:(UIColor *)color superView:(UIView *)superView constraints:(SJZMASConstraint)block tapGesture:(nullable SJZGestureBlock)tapBlock;

@end

NS_ASSUME_NONNULL_END

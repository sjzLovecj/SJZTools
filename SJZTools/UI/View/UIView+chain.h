//
//  UIView+chain.h
//  SJZTools
//
//  Created by SJZ on 2018/10/23.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (chain)

// 描边
- (UIView * (^)(CGFloat))sjzBorderWidth;
- (UIView * (^)(UIColor *))sjzBorderColor;

// 圆角
- (UIView * (^)(CGFloat))sjzCornerRadius;

// 阴影
- (UIView * (^)(UIColor *))sjzShadowColor;
- (UIView * (^)(CGSize))sjzShadowOffset;
- (UIView * (^)(CGFloat))sjzShadowOpacity;
- (UIView * (^)(CGFloat))sjzShadowRadius;

// 设置背景
- (UIView *(^)(UIColor *))sjzBackgroundColor;

@end

NS_ASSUME_NONNULL_END

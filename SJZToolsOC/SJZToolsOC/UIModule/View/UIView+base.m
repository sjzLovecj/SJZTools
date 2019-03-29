//
//  UIView+base.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UIView+base.h"

@implementation UIView (base)

- (CGFloat)sjzX {
    return self.frame.origin.x;
}

- (void)setSjzX:(CGFloat)sjzX {
    CGRect frame = self.frame;
    frame.origin.x = sjzX;
    self.frame = frame;
}

- (CGFloat)sjzY {
    return self.frame.origin.y;
}

- (void)setSjzY:(CGFloat)sjzY {
    CGRect frame = self.frame;
    frame.origin.y = sjzY;
    self.frame = frame;
}

- (CGFloat)sjzWidth {
    return self.frame.size.width;
}

- (void)setSjzWidth:(CGFloat)sjzWidth {
    CGRect frame = self.frame;
    frame.size.width = sjzWidth;
    self.frame = frame;
}

- (CGFloat)sjzHeight {
    return self.frame.size.height;
}

- (void)setSjzHeight:(CGFloat)sjzHeight {
    CGRect frame = self.frame;
    frame.size.height = sjzHeight;
    self.frame = frame;
}

- (CGFloat)sjzCenterX {
    return self.center.x;
}

- (void)setSjzCenterX:(CGFloat)sjzCenterX {
    CGPoint center = self.center;
    center.x = sjzCenterX;
    self.center = center;
}

- (CGFloat)sjzCenterY {
    return self.center.y;
}

- (void)setSjzCenterY:(CGFloat)sjzCenterY {
    CGPoint center = self.center;
    center.y = sjzCenterY;
    self.center = center;
}

- (CGFloat)sjzMaxX {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)sjzMaxY {
    return self.frame.origin.y + self.frame.size.width;
}

- (CGFloat)sjzBorderWidth {
    return self.layer.borderWidth;
}

- (void)setSjzBorderWidth:(CGFloat)sjzBorderWidth {
    self.layer.borderWidth = sjzBorderWidth;
}

- (UIColor *)sjzBorderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setSjzBorderColor:(UIColor *)sjzBorderColor {
    self.layer.borderColor = sjzBorderColor.CGColor;
}

- (CGFloat)sjzCornerRadius {
    return self.layer.cornerRadius;
}

- (void)setSjzCornerRadius:(CGFloat)sjzCornerRadius {
    self.layer.cornerRadius = sjzCornerRadius;
}

#pragma mark - 链方法
- (UIView * _Nonnull (^)(UIColor * _Nonnull))sjz_backgorundColor {
    return ^UIView * (UIColor * backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGRect))sjz_frame {
    return ^UIView * (CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGRect))sjz_bounds {
    return ^UIView * (CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_x {
    return ^UIView * (CGFloat x) {
        self.sjzX = x;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_y {
    return ^UIView * (CGFloat y) {
        self.sjzY = y;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_width {
    return ^UIView * (CGFloat width) {
        self.sjzWidth = width;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_Height {
    return ^UIView * (CGFloat height) {
        self.sjzHeight = height;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_centerX {
    return ^UIView * (CGFloat centerx) {
        self.sjzCenterX = centerx;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_centerY {
    return ^UIView * (CGFloat centery) {
        self.sjzCenterY = centery;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_borderWidth {
    return ^UIView * (CGFloat borderWidth) {
        self.sjzBorderWidth = borderWidth;
        return self;
    };
}

- (UIView * _Nonnull (^)(UIColor * _Nonnull))sjz_borderColor {
    return ^UIView * (UIColor * borderColor) {
        self.sjzBorderColor = borderColor;
        return self;
    };
}

- (UIView * _Nonnull (^)(CGFloat))sjz_cornerRadius {
    return ^UIView * (CGFloat cornerRadius) {
        self.sjzCornerRadius = cornerRadius;
        return self;
    };
}

@end

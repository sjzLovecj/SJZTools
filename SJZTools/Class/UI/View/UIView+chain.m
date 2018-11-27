//
//  UIView+chain.m
//  SJZTools
//
//  Created by SJZ on 2018/10/23.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import "UIView+chain.h"

@implementation UIView (chain)

- (UIView * (^)(CGFloat))sjzBorderWidth {
    return ^UIView * (CGFloat width) {
        self.layer.borderWidth = width;
        return self;
    };
}

- (UIView * (^)(UIColor *))sjzBorderColor {
    return ^UIView * (UIColor * color) {
        self.layer.borderColor = color.CGColor;
        return self;
    };
}

- (UIView * (^)(CGFloat))sjzCornerRadius {
    return ^UIView * (CGFloat radius) {
        self.layer.cornerRadius = radius;
        return self;
    };
}

- (UIView * (^)(UIColor *))sjzShadowColor {
    return ^UIView * (UIColor * color) {
        self.layer.shadowColor = color.CGColor;
        return self;
    };
}

- (UIView * (^)(CGSize))sjzShadowOffset {
    return ^UIView * (CGSize size) {
        self.layer.shadowOffset = size;
        return self;
    };
}

- (UIView * (^)(CGFloat))sjzShadowOpacity {
    return ^UIView * (CGFloat opacity) {
        self.layer.shadowOpacity = opacity;
        return self;
    };
}

- (UIView * (^)(CGFloat))sjzShadowRadius {
    return ^UIView * (CGFloat radius) {
        self.layer.shadowRadius = radius;
        
        return self;
    };
}

- (UIView *(^)(UIColor *))sjzBackgroundColor {
    return ^UIView * (UIColor * color) {
        self.backgroundColor = color;
        return self;
    };
}

@end

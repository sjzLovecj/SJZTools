//
//  UIButton+chain.m
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIButton+chain.h"
#import "UIView+chain.h"

@implementation UIButton (chain)

- (UIButton *(^)(NSString *))sjzNorTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))sjzHigTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateHighlighted];
        
        return self;
    };
}

- (UIButton *(^)(NSString *))sjzSelTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateSelected];
        
        return self;
    };
}

- (UIButton *(^)(UIColor *))sjzNorTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))sjzHigTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIColor *))sjzSelTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIImage *))sjzNorImage {
    return ^UIButton * (UIImage * image) {
        [self setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIImage *))sjzHigImage {
    return ^UIButton * (UIImage * image) {
        [self setImage:image forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIImage *))sjzSelImage {
    return ^UIButton * (UIImage * image) {
        [self setImage:image forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(UIFont *))sjzFont {
    return ^UIButton * (UIFont * font) {
        self.titleLabel.font = font;
        return self;
    };
}

@end

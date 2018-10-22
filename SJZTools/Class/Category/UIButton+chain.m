//
//  UIButton+chain.m
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIButton+chain.h"

@implementation UIButton (chain)

- (UIButton *(^)(NSString *))setNorTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))setHigTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateHighlighted];
        
        return self;
    };
}

- (UIButton *(^)(NSString *))setSelTitle {
    return ^UIButton * (NSString * title) {
        [self setTitle:title forState:UIControlStateSelected];
        
        return self;
    };
}

- (UIButton *(^)(UIColor *))setNorTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(UIColor *))setHigTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(UIColor *))setSelTitleColor {
    return ^UIButton * (UIColor * titleColor) {
        [self setTitleColor:titleColor forState:UIControlStateSelected];
        return self;
    };
}

- (UIButton *(^)(NSString *))setNorImage {
    return ^UIButton * (NSString * imageName) {
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        return self;
    };
}

- (UIButton *(^)(NSString *))setHigImage {
    return ^UIButton * (NSString * imageName) {
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateHighlighted];
        return self;
    };
}

- (UIButton *(^)(NSString *))setSelImage {
    return ^UIButton * (NSString * imageName) {
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateSelected];
        return self;
    };
}

@end

//
//  UIView+Location.m
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIView+Location.h"

@implementation UIView (Location)

- (CGFloat)locationX {
    return self.frame.origin.x;
}

- (void)setLocationX:(CGFloat)locationX {
    CGRect frame = self.frame;
    frame.origin.x = locationX;
    self.frame = frame;
}

- (CGFloat)locationY {
    return self.frame.origin.y;
}

- (void)setLocationY:(CGFloat)locationY {
    CGRect frame = self.frame;
    frame.origin.y = locationY;
    self.frame = frame;
}

- (CGFloat)locationWidth {
    return self.frame.size.width;
}

- (void)setLocationWidth:(CGFloat)locationWidth {
    CGRect frame = self.frame;
    frame.size.width = locationWidth;
    self.frame = frame;
}

- (CGFloat)locationHeight {
    return self.frame.size.height;
}

- (void)setLocationHeight:(CGFloat)locationHeight {
    CGRect frame = self.frame;
    frame.size.height = locationHeight;
    self.frame = frame;
}

- (CGFloat)locationCenterX {
    return self.center.x;
}

- (void)setLocationCenterX:(CGFloat)locationCenterX {
    CGPoint center = self.center;
    center.x = locationCenterX;
    self.center = center;
}

- (CGFloat)locationCenterY {
    return self.center.y;
}

- (void)setLocationCenterY:(CGFloat)locationCenterY {
    CGPoint center = self.center;
    center.y = locationCenterY;
    self.center = center;
}

- (CGFloat)locationMaxX {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)locationMaxY {
    return self.frame.origin.y + self.frame.size.height;
}

@end

//
//  UIView+Location.h
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Location)

@property (nonatomic, assign) CGFloat locationX;
@property (nonatomic, assign) CGFloat locationY;
@property (nonatomic, assign) CGFloat locationWidth;
@property (nonatomic, assign) CGFloat locationHeight;
@property (nonatomic, assign) CGFloat locationCenterX;
@property (nonatomic, assign) CGFloat locationCenterY;
@property (nonatomic, assign, readonly) CGFloat locationMaxX;
@property (nonatomic, assign, readonly) CGFloat locationMaxY;

@end

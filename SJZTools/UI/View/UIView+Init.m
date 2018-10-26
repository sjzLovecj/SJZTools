//
//  UIView+Init.m
//  SJZTools
//
//  Created by SJZ on 2018/10/23.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import "UIView+Init.h"
#import "UIView+chain.h"

@implementation UIView (Init)

/**
 初始化View，背景颜色、父视图
 
 @param color           背景颜色
 @param superView       父视图
 @param complete        完成设置
 
 @return view对象
 */
+ (instancetype)viewWithBackColor:(UIColor *)color
                        superView:(UIView *)superView
                         complete:(viewComplete)complete {
    
    return [UIView viewWithBackColor:color
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete];
}

/**
 初始化View，背景颜色、圆角、父视图
 
 @param color           背景颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete        完成设置
 
 @return view对象
 */
+ (instancetype)viewWithBackColor:(UIColor *)color
                     cornerRadius:(CGFloat)cornerRadius
                        superView:(UIView *)superView
                         complete:(viewComplete)complete {
    
    return [UIView viewWithBackColor:color
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:cornerRadius
                           superView:superView
                            complete:complete];
}

/**
 初始化View，背景颜色、描边宽度、描边颜色、圆角、父视图

 @param color           背景颜色
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete        完成设置
 
 @return view对象
 */
+ (instancetype)viewWithBackColor:(UIColor *)color
                      borderWidth:(CGFloat)borderWidth
                      borderColor:(nullable UIColor *)borderColor
                     cornerRadius:(CGFloat)cornerRadius
                        superView:(UIView *)superView
                         complete:(viewComplete)complete {
    UIView * view = [[UIView alloc] init];
    
    view.backgroundColor = color ? color : [UIColor whiteColor];
    
    view.sjzCornerRadius(cornerRadius);
    view.layer.masksToBounds = YES;
    
    if(borderWidth > 0) {
        view.sjzBorderWidth(borderWidth);
        view.sjzBorderColor(borderColor);
    }
    
    [superView addSubview:view];
    
    complete(view);
    if(view.layer.shadowOpacity > 0) {
        view.layer.masksToBounds = NO;
    }
    
    return view;
}

@end

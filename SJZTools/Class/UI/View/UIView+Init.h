//
//  UIView+Init.h
//  SJZTools
//
//  Created by SJZ on 2018/10/23.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^viewComplete)(UIView * view);

@interface UIView (Init)

/**
 初始化View，背景颜色、父视图
 
 @param color           背景颜色
 @param superView       父视图
 @param complete        完成设置
 
 @return view对象
 */
+ (instancetype)viewWithBackColor:(UIColor *)color
                        superView:(UIView *)superView
                         complete:(viewComplete)complete;

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
                         complete:(viewComplete)complete;

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
                         complete:(viewComplete)complete;

@end

NS_ASSUME_NONNULL_END

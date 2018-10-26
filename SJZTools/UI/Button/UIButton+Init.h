//
//  UIButton+Init.h
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+chain.h"

typedef void (^buttonComplete)(UIButton * btn);
typedef void (^touchUpBlock)(UIButton * btn);

@interface UIButton (Init)

@property (nonatomic, copy) touchUpBlock touchUpBlock;

/**
 创建button，图片（默认）、背景颜色、父视图
 
 @param norImage        默认图片
 @param backColor       背景颜色
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithNorImage:(id)norImage
                         backColor:(UIColor *)backColor
                         superView:(UIView *)superView
                          complete:(buttonComplete)complete
                      touchUpBlock:(touchUpBlock)touchUpBlock;

/**
 创建button，文本、字体、文字颜色（默认）、背景颜色、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param font            字体
 @param backColor       背景颜色
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                           font:(UIFont *)font
                      backColor:(UIColor *)backColor
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;


/**
 创建button，文本、字体、文字颜色（默认）、图片（默认）、背景颜色、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param font            字体
 @param norImage        默认图片
 @param backColor       背景颜色
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                      backColor:(UIColor *)backColor
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;

/**
 创建button，文本、字体、文字颜色（默认、高亮）、图片（默认、高亮）、背景颜色、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param heiColor        高亮文字颜色
 @param font            字体
 @param norImage        默认图片
 @param heiImage        高亮图片
 @param backColor       背景颜色
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       heiColor:(UIColor *)heiColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       heiImage:(id)heiImage
                      backColor:(UIColor *)backColor
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;

/**
 创建button，文本、字体、文字颜色（默认、高亮）、图片（默认、高亮）、背景颜色、圆角、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param heiColor        高亮文字颜色
 @param font            字体
 @param norImage        默认图片
 @param heiImage        高亮图片
 @param backColor       背景颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       heiColor:(UIColor *)heiColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       heiImage:(id)heiImage
                      backColor:(UIColor *)backColor
                   cornerRadius:(CGFloat)cornerRadius
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;

/**
 创建button，文本、字体、文字颜色（默认、高亮）、图片（默认、高亮）、背景颜色、描边宽度、描边颜色、圆角、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param heiColor        高亮文字颜色
 @param font            字体
 @param norImage        默认图片
 @param heiImage        高亮图片
 @param backColor       背景颜色
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       heiColor:(UIColor *)heiColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       heiImage:(id)heiImage
                      backColor:(UIColor *)backColor
                    borderWidth:(CGFloat)borderWidth
                    borderColor:(UIColor *)borderColor
                   cornerRadius:(CGFloat)cornerRadius
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;



/**
 创建button，文本、字体、文字颜色（默认、选中）、图片（默认、选中）、背景颜色、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param selColor        选中文字颜色
 @param font            字体
 @param norImage        默认图片
 @param selImage        选中图片
 @param backColor       背景颜色
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       selColor:(UIColor *)selColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       selImage:(id)selImage
                      backColor:(UIColor *)backColor
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;


/**
 创建button，文本、字体、文字颜色（默认、选中）、图片（默认、选中）、背景颜色、圆角、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param selColor        选中文字颜色
 @param font            字体
 @param norImage        默认图片
 @param selImage        选中图片
 @param backColor       背景颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       selColor:(UIColor *)selColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       selImage:(id)selImage
                      backColor:(UIColor *)backColor
                   cornerRadius:(CGFloat)cornerRadius
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;

/**
 创建button，文本、字体、文字颜色（默认、选中）、图片（默认、选中）、背景颜色、描边宽度、描边颜色、圆角、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param selColor        选中文字颜色
 @param font            字体
 @param norImage        默认图片
 @param selImage        选中图片
 @param backColor       背景颜色
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       selColor:(UIColor *)selColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       selImage:(id)selImage
                      backColor:(UIColor *)backColor
                    borderWidth:(CGFloat)borderWidth
                    borderColor:(UIColor *)borderColor
                   cornerRadius:(CGFloat)cornerRadius
                      superView:(UIView *)superView
                       complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;


/**
 创建button，文本、字体、文字颜色（默认、高亮、选中）、图片（默认、高亮、选中）、背景颜色、描边宽度、描边颜色、圆角、父视图
 
 @param title           文本
 @param norColor        默认文字颜色
 @param heiColor        高亮文字颜色
 @param selColor        选中文字颜色
 @param font            字体
 @param norImage        默认图片
 @param heiImage        高亮图片
 @param selImage        选中图片
 @param backColor       背景颜色
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param complete     设置完方法出入的参数做的操作
 @param touchUpBlock    点击事件
 
 @return                button对象
 */
+ (instancetype)buttonWithTitle:(NSString *)title
                       norColor:(UIColor *)norColor
                       heiColor:(UIColor *)heiColor
                       selColor:(UIColor *)selColor
                           font:(UIFont *)font
                       norImage:(id)norImage
                       heiImage:(id)heiImage
                       selImage:(id)selImage
                      backColor:(UIColor *)backColor
                    borderWidth:(CGFloat)borderWidth
                    borderColor:(UIColor *)borderColor
                   cornerRadius:(CGFloat)cornerRadius
                      superView:(UIView *)superView
                  complete:(buttonComplete)complete
                   touchUpBlock:(touchUpBlock)touchUpBlock;

@end

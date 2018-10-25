//
//  UILabel+Init.h
//  SJZTools
//
//  Created by SJZ on 2018/10/25.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+chain.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^completeLabelBlock)(UILabel * btn);

@interface UILabel (Init)

/**
 初始化 Label，文字、颜色、字体大小、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、背景颜色、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param backColor       背景颜色
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    backColor:(UIColor *)backColor
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、背景颜色、文字布局方式、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param backColor       背景颜色
 @param textAlignment   文字布局方式
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    backColor:(UIColor *)backColor
                textAlignment:(NSTextAlignment)textAlignment
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、行数、背景颜色、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param numberOfLine    行数
 @param backColor       背景颜色
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                 numberOfLine:(NSInteger)numberOfLine
                    backColor:(UIColor *)backColor
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、描边宽度、描边颜色、圆角、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                  borderWidth:(CGFloat)borderWidth
                  borderColor:(nullable UIColor *)borderColor
                 cornerRadius:(CGFloat)cornerRadius
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、行数、背景颜色、文字布局方式、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param numberOfLine    行数
 @param backColor       背景颜色
 @param textAlignment   文字布局方式
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                 numberOfLine:(NSInteger)numberOfLine
                    backColor:(UIColor *)backColor
                textAlignment:(NSTextAlignment)textAlignment
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

/**
 初始化 Label，文字、颜色、字体大小、行数、背景颜色、文字布局方式、描边宽度、描边颜色、圆角、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param numberOfLine    行数
 @param backColor       背景颜色
 @param textAlignment   文字布局方式
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param completeLabelBlock   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                 numberOfLine:(NSInteger)numberOfLine
                    backColor:(UIColor *)backColor
                textAlignment:(NSTextAlignment)textAlignment
                  borderWidth:(CGFloat)borderWidth
                  borderColor:(nullable UIColor *)borderColor
                 cornerRadius:(CGFloat)cornerRadius
                    superView:(UIView *)superView
                completeLabelBlock:(completeLabelBlock)completeLabelBlock;

@end

NS_ASSUME_NONNULL_END

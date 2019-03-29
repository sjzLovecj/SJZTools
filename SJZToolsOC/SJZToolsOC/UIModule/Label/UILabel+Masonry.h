//
//  UILabel+Masonry.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Masonry.h"

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Masonry)

/**
 初始化Label，文字、文字颜色、字体

 @param text 文字
 @param textColor 文字颜色
 @param font 字体
 @param superView 父视图
 @param block Masonry布局
 @return 返回Label对象
 */
+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font superView:(UIView *)superView constraints:(SJZMASConstraint)block;


/**
 初始化Label，文字、文字颜色、字体、背景颜色

 @param text 文字
 @param textColor 文字颜色
 @param font 字体
 @param backColor 背景颜色
 @param superView 父视图
 @param block Masonry布局
 @return 返回Label对象
 */
+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font backColor:(UIColor *)backColor superView:(UIView *)superView constraints:(SJZMASConstraint)block;

/**
 初始化Label，文字、文字颜色、字体、行数

 @param text 文字
 @param textColor 文字颜色
 @param font 字体
 @param lines 行数
 @param superView 父视图
 @param block Masonry布局
 @return 返回Label对象
 */
+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines superView:(UIView *)superView constraints:(SJZMASConstraint)block;

/**
 初始化Label，文字、文字颜色、字体、行数、文字位置

 @param text 文字
 @param textColor 文字颜色
 @param font 字体
 @param lines 行数
 @param alignment 文字位置
 @param superView 父视图
 @param block Masonry布局
 @return 返回Label对象
 */
+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines textAlignment:(NSTextAlignment)alignment superView:(UIView *)superView constraints:(SJZMASConstraint)block;


/**
 初始化Label，文字、文字颜色、字体、行数、文字位置、背景颜色

 @param text 文字
 @param textColor 文字颜色
 @param font 字体
 @param lines 行数
 @param alignment 文字位置
 @param backColor 背景颜色
 @param superView 父视图
 @param block 布局
 @return 返回Label对象
 */
+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines textAlignment:(NSTextAlignment)alignment backColor:(UIColor *)backColor superView:(UIView *)superView constraints:(SJZMASConstraint)block;

@end

NS_ASSUME_NONNULL_END

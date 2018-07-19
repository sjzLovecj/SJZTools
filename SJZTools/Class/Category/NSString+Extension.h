//
//  NSString+Extension.h
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extension)

/**
 获取字符串宽度

 @param heith 可输入字符的高度
 @param font 字体大小
 @return 宽度
 */
- (CGFloat)widthWithHeight:(CGFloat)heith font:(UIFont *)font;

/**
 获取字符串高度

 @param width 可输入字符串的宽度
 @param font 字体大小
 @return 高度
 */
- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font;

@end

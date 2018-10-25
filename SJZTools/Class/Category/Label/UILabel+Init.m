//
//  UILabel+Init.m
//  SJZTools
//
//  Created by SJZ on 2018/10/25.
//  Copyright © 2018 SJZ. All rights reserved.
//

#import "UILabel+Init.h"

#define emptyString(s) (s == nil || [s isKindOfClass:[NSNull class]] || ([s isKindOfClass:[NSString class]] && s.length == 0))

@implementation UILabel (Init)

/**
 初始化 Label，文字、颜色、字体大小、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:1 backColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft superView:superView complete:complete];
}

/**
 初始化 Label，文字、颜色、字体大小、背景颜色、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param backColor       背景颜色
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    backColor:(UIColor *)backColor
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:1 backColor:backColor textAlignment:NSTextAlignmentLeft superView:superView complete:complete];
}

/**
 初始化 Label，文字、颜色、字体大小、背景颜色、文字布局方式、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param backColor       背景颜色
 @param textAlignment   文字布局方式
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                    backColor:(UIColor *)backColor
                textAlignment:(NSTextAlignment)textAlignment
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:1 backColor:backColor textAlignment:textAlignment superView:superView complete:complete];
}

/**
 初始化 Label，文字、颜色、字体大小、行数、背景颜色、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param numberOfLine    行数
 @param backColor       背景颜色
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                 numberOfLine:(NSInteger)numberOfLine
                    backColor:(UIColor *)backColor
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:numberOfLine backColor:backColor textAlignment:NSTextAlignmentLeft superView:superView complete:complete];
}

/**
 初始化 Label，文字、颜色、字体大小、描边宽度、描边颜色、圆角、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param borderWidth     描边宽度
 @param borderColor     描边颜色
 @param cornerRadius    圆角
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                  borderWidth:(CGFloat)borderWidth
                  borderColor:(nullable UIColor *)borderColor
                 cornerRadius:(CGFloat)cornerRadius
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:1 backColor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft borderWidth:0 borderColor:nil cornerRadius:0 superView:superView complete:complete];
}


/**
 初始化 Label，文字、颜色、字体大小、行数、背景颜色、文字布局方式、父视图
 
 @param text            文字
 @param color           颜色
 @param font            字体大小
 @param numberOfLine    行数
 @param backColor       背景颜色
 @param textAlignment   文字布局方式
 @param superView       父视图
 @param  complete   完成设置
 @return 返回Label对象
 */
+ (instancetype)labelWithText:(NSString *)text
                    textColor:(UIColor *)color
                         font:(UIFont *)font
                 numberOfLine:(NSInteger)numberOfLine
                    backColor:(UIColor *)backColor
                textAlignment:(NSTextAlignment)textAlignment
                    superView:(UIView *)superView
                complete:(SJZLabelComplete)complete {
    return [UILabel labelWithText:text textColor:color font:font numberOfLine:numberOfLine backColor:backColor textAlignment:textAlignment borderWidth:0 borderColor:nil cornerRadius:0 superView:superView complete:complete];
}



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
 @param  complete   完成设置
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
                complete:(SJZLabelComplete)complete {
    UILabel * label = [[UILabel alloc] init];
    
    if(backColor) {
        label.backgroundColor = backColor;
    }else {
        label.backgroundColor = [UIColor clearColor];
    }
    
    if(!emptyString(text)) {
        label.text = text;
    }else {
        label.text = @"";
    }
    
    if(color) {
        label.textColor = color;
    }else {
        label.textColor = [UIColor blackColor];
    }
    
    if(font) {
        label.font = font;
    }
    
    label.numberOfLines = numberOfLine;
    
    label.textAlignment = textAlignment;
    
    label.sjzCornerRadius(cornerRadius);
    label.layer.masksToBounds = YES;
    
    if(borderWidth) {
        label.sjzBorderWidth(borderWidth);
        label.sjzBorderColor(borderColor);
    }
    
    [superView addSubview:superView];
    
    complete(label);
    
    if(label.layer.shadowOpacity > 0) {
        label.layer.masksToBounds = NO;
    }
    
    return label;
}

@end

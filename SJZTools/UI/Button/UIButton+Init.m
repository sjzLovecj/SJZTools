//
//  UIButton+Init.m
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIButton+Init.h"
#import <objc/runtime.h>

// 判断它是否是空字符串。
#define emptyString(s) (s == nil || [s isKindOfClass:[NSNull class]] || ([s isKindOfClass:[NSString class]] && s.length == 0))

#define SJZButtonTouchUpKey @"SJZButtonTouchUpKey"
@implementation UIButton (Init)

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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:nil
                            norColor:nil
                            heiColor:nil
                            selColor:nil
                                font:nil
                            norImage:norImage
                            heiImage:nil
                            selImage:nil
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}

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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:nil
                            selColor:nil
                                font:font
                            norImage:nil
                            heiImage:nil
                            selImage:nil
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}

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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:nil
                            selColor:nil
                                font:font
                            norImage:norImage
                            heiImage:nil
                            selImage:nil
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}


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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:heiColor
                            selColor:nil
                                font:font
                            norImage:norImage
                            heiImage:heiImage
                            selImage:nil
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}

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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:heiColor
                            selColor:nil
                                font:font
                            norImage:norImage
                            heiImage:heiImage
                            selImage:nil
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:cornerRadius
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}


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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:heiColor
                            selColor:nil
                                font:font
                            norImage:norImage
                            heiImage:heiImage
                            selImage:nil
                           backColor:backColor
                         borderWidth:borderWidth
                         borderColor:borderColor
                        cornerRadius:cornerRadius
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}



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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:nil
                            selColor:selColor
                                font:font
                            norImage:norImage
                            heiImage:nil
                            selImage:selImage
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:0
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}


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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:nil
                            selColor:selColor
                                font:font
                            norImage:norImage
                            heiImage:nil
                            selImage:selImage
                           backColor:backColor
                         borderWidth:0
                         borderColor:nil
                        cornerRadius:cornerRadius
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}


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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    return [UIButton buttonWithTitle:title
                            norColor:norColor
                            heiColor:nil
                            selColor:selColor
                                font:font
                            norImage:norImage
                            heiImage:nil
                            selImage:selImage
                           backColor:backColor
                         borderWidth:borderWidth
                         borderColor:borderColor
                        cornerRadius:cornerRadius
                           superView:superView
                            complete:complete
                        touchUpBlock:touchUpBlock];
}



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
                   touchUpBlock:(touchUpBlock)touchUpBlock {
    
    UIButton * button = [[UIButton alloc] init];
    
    button.touchUpBlock = touchUpBlock;
    
    if(!emptyString(title)) {
        button.sjzNorTitle(title);
    }
    
    if(norColor) {
        button.sjzNorTitleColor(norColor);
    }else {
        button.sjzNorTitleColor([UIColor blackColor]);
    }
    
    if(heiColor) {
        button.sjzHigTitleColor(heiColor);
    }
    
    if(selColor) {
        button.sjzSelTitleColor(selColor);
    }
    
    UIImage * norMImage = nil;
    if([norImage isKindOfClass:[NSString class]]) {
        norMImage = [UIImage imageNamed:norImage];
    }else if([norImage isKindOfClass:[UIImage class]]) {
        norMImage = norImage;
    }
    if(norMImage) {
        button.sjzNorImage(norMImage);
    }
    
    UIImage * heiMImage = nil;
    if([heiImage isKindOfClass:[NSString class]]) {
        heiMImage = [UIImage imageNamed:heiImage];
    }else if([heiImage isKindOfClass:[UIImage class]]) {
        heiMImage = heiImage;
    }
    if(heiMImage) {
        button.sjzHigImage(heiMImage);
    }
    
    UIImage * selMImage = nil;
    if([selImage isKindOfClass:[NSString class]]) {
        selMImage = [UIImage imageNamed:selImage];
    }else if([selImage isKindOfClass:[UIImage class]]) {
        selMImage = selImage;
    }
    if(selMImage) {
        button.sjzSelImage(selMImage);
    }
    
    if(font) {
        button.titleLabel.font = font;
    }
    
    button.sjzBackgroundColor(backColor ? backColor : [UIColor clearColor]);
    
    button.sjzCornerRadius(cornerRadius);
    button.layer.masksToBounds = YES;
    
    if(borderWidth) {
        button.sjzBorderWidth(borderWidth);
        button.sjzBorderColor(borderColor);
    }
    
    [superView addSubview:button];
    
    complete(button);
    
    if(button.layer.shadowOpacity > 0) {
        button.layer.masksToBounds = NO;
    }
    
    return button;
}

#pragma mark - 增加点击事件
- (touchUpBlock)touchUpBlock {
    return objc_getAssociatedObject(self, SJZButtonTouchUpKey);
}

- (void)setTouchUpBlock:(touchUpBlock)touchUpBlock {
    objc_setAssociatedObject(self, SJZButtonTouchUpKey, touchUpBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(touchUpBlock:) forControlEvents:UIControlEventTouchUpInside];
    if(touchUpBlock) {
        [self addTarget:self action:@selector(touchUpBlock:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)touchUpBlock:(UIButton *)btn {
    touchUpBlock block = [self touchUpBlock];
    if(block) {
        block(btn);
    }
}
@end

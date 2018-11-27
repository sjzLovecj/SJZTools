//
//  SJZButton.h
//  SJZTabBar
//
//  Created by SJZ on 2018/11/26.
//  Copyright © 2018 sjz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, SJZButtonType) {
    SJZButtonTypeLeft,
    SJZButtonTypeRight,
    SJZButtonTypeTop,
    SJZButtonTypeBottom
};

@interface SJZButton : UIControl

@property (nonatomic, strong) UILabel * titleLabel;
@property (nonatomic, strong) UIImageView * imageView;
@property (nonatomic, strong) UIImageView * backgroundImageView;

@property (nonatomic, assign) SJZButtonType buttonType;

@property (nonatomic, assign) CGFloat middleMargin;

@property (nonatomic, assign) CGFloat borderWidth;

// 设置图片
- (void)SJZSetNormalImage:(nullable UIImage *)normalImage highlightedImage:(nullable UIImage *)highlightedImage;
- (void)SJZSetNormalImage:(nullable UIImage *)normalImage disabledImage:(nullable UIImage *)disabledImage;
- (void)SJZSetNormalImage:(nullable UIImage *)normalImage selectedImage:(nullable UIImage *)selectedImage;
- (void)SJZSetNormalImage:(nullable UIImage *)normalImage highlightedImage:(nullable UIImage *)highlightedImage selectedImage:(nullable UIImage *)selectedImage selectedHigImage:(nullable UIImage *)selectedHigImage disabledImage:(nullable UIImage *)disabledImage;

// 设置文字
- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle highlightedTitle:(nullable NSString *)highlightedTitle;
- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle disabledTitle:(nullable NSString *)disabledTitle;
- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle selectedTitle:(nullable NSString *)selectedTitle;
- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle highlightedTitle:(nullable NSString *)highlightedTitle selectedTitle:(nullable NSString *)selectedTitle selectedHigTitle:(nullable NSString *)selectedHigTitle disabledTitle:(nullable NSString *)disabledTitle;

// 设置文字颜色
- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor highlightedTitleColor:(nullable UIColor *)highlightedTitleColor;
- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor disabledTitleColor:(nullable UIColor *)disabledTitleColor;
- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor selectedTitleColor:(nullable UIColor *)selectedTitleColor;
- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor highlightedTitleColor:(nullable UIColor *)highlightedTitleColor selectedTitleColor:(nullable UIColor *)selectedTitleColor selectedHigTitleColor:(nullable UIColor *)selectedHigTitleColor disabledTitleColor:(nullable UIColor *)disabledTitleColor;

// 设置背景颜色
- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor highlightedBackgroundColor:(nullable UIColor *)highlightedBackgroundColor;
- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor disabledBackgroundColor:(nullable UIColor *)disabledBackgroundColor;
- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor selectedBackgroundColor:(nullable UIColor *)selectedBackgroundColor;
- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor highlightedBackgroundColor:(nullable UIColor *)highlightedBackgroundColor selectedBackgroundColor:(nullable UIColor *)selectedBackgroundColor selectedHigBackgroundColor:(nullable UIColor *)selectedHigBackgroundColor disabledBackgroundColor:(nullable UIColor *)disabledBackgroundColor;

// 设置背景图片
- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage highlightedBackgroundImage:(nullable UIImage *)highlightedBackgroundImage;
- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage disabledBackgroundImage:(nullable UIImage *)disabledBackgroundImage;
- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage selectedImage:(nullable UIImage *)selectedBackgroundImage;
- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage highlightedBackgroundImage:(nullable UIImage *)highlightedBackgroundImage selectedBackgroundImage:(nullable UIImage *)selectedBackgroundImage selectedHigBackgroundImage:(nullable UIImage *)selectedHigBackgroundImage disabledBackgroundImage:(nullable UIImage *)disabledBackgroundImage;

// 设置颜色
- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor highlightedBorderColor:(nullable UIColor *)highlightedBorderColor;
- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor disabledBorderColor:(nullable UIColor *)disabledBorderColor;
- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor selectedBorderColor:(nullable UIColor *)selectedBorderColor;
- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor highlightedBorderColor:(nullable UIColor *)highlightedBorderColor selectedBorderColor:(nullable UIColor *)selectedBorderColor selectedHigBorderColor:(nullable UIColor *)selectedHigBorderColor disabledBorderColor:(nullable UIColor *)disabledBorderColor;
@end

NS_ASSUME_NONNULL_END

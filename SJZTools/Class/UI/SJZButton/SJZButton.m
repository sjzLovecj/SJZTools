//
//  SJZButton.m
//  SJZTabBar
//
//  Created by SJZ on 2018/11/26.
//  Copyright © 2018 sjz. All rights reserved.
//

#import "SJZButton.h"

@interface SJZButton ()

@property (nonatomic, strong) UILayoutGuide * containGuide;

// 设置图片
@property (nonatomic, strong) UIImage * normalImage;
@property (nonatomic, strong) UIImage * highlightedImage;
@property (nonatomic, strong) UIImage * selectedImage;
@property (nonatomic, strong) UIImage * selectedHigImage;
@property (nonatomic, strong) UIImage * disabledImage;

// 设置文字
@property (nonatomic, strong) NSString * normalTitle;
@property (nonatomic, strong) NSString * highlightedTitle;
@property (nonatomic, strong) NSString * selectedTitle;
@property (nonatomic, strong) NSString * selectedHigTitle;
@property (nonatomic, strong) NSString * disabledTitle;

// 设置文字颜色
@property (nonatomic, strong) UIColor * normalTitleColor;
@property (nonatomic, strong) UIColor * highlightedTitleColor;
@property (nonatomic, strong) UIColor * selectedTitleColor;
@property (nonatomic, strong) UIColor * selectedHigTitleColor;
@property (nonatomic, strong) UIColor * disabledTitleColor;

// 设置背景颜色
@property (nonatomic, strong) UIColor * normalBackgroundColor;
@property (nonatomic, strong) UIColor * highlightedBackgroundColor;
@property (nonatomic, strong) UIColor * selectedBackgroundColor;
@property (nonatomic, strong) UIColor * selectedHigBackgroundColor;
@property (nonatomic, strong) UIColor * disabledBackgroundColor;

// 设置背景图片
@property (nonatomic, strong) UIImage * normalBackgroundImage;
@property (nonatomic, strong) UIImage * highlightedBackgroundImage;
@property (nonatomic, strong) UIImage * selectedBackgroundImage;
@property (nonatomic, strong) UIImage * selectedHigBackgroundImage;
@property (nonatomic, strong) UIImage * disabledBackgroundImage;

// 设置边框颜色
@property (nonatomic, strong) UIColor * normalBorderColor;
@property (nonatomic, strong) UIColor * highlightedBorderColor;
@property (nonatomic, strong) UIColor * selectedBorderColor;
@property (nonatomic, strong) UIColor * selectedHigBorderColor;
@property (nonatomic, strong) UIColor * disabledBorderColor;
@end

@implementation SJZButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self buildUI];
        self.buttonType = SJZButtonTypeLeft;
        self.middleMargin = 0;
        self.borderWidth = 0;
    }
    
    return self;
}

- (void)buildUI {
    // 背景颜色
    _backgroundImageView = [[UIImageView alloc] init];
    _backgroundImageView.translatesAutoresizingMaskIntoConstraints = NO;
    _backgroundImageView.userInteractionEnabled = NO;
    [self addSubview:_backgroundImageView];
    [_backgroundImageView.topAnchor constraintEqualToAnchor:self.topAnchor].active = YES;
    [_backgroundImageView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor].active = YES;
    [_backgroundImageView.leftAnchor constraintEqualToAnchor:self.leftAnchor].active = YES;
    [_backgroundImageView.rightAnchor constraintEqualToAnchor:self.rightAnchor].active = YES;
    
    // UILayoutGuide
    _containGuide = [[UILayoutGuide alloc] init];
    [self addLayoutGuide:_containGuide];
    [_containGuide.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    [_containGuide.centerYAnchor constraintEqualToAnchor:self.centerYAnchor].active = YES;
    
    [_containGuide.topAnchor constraintGreaterThanOrEqualToAnchor:self.topAnchor].active = YES;
    [_containGuide.bottomAnchor constraintLessThanOrEqualToAnchor:self.bottomAnchor].active = YES;
    [_containGuide.leftAnchor constraintGreaterThanOrEqualToAnchor:self.leftAnchor].active = YES;
    [_containGuide.rightAnchor constraintLessThanOrEqualToAnchor:self.rightAnchor].active = YES;
    
    // 文字
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _titleLabel.userInteractionEnabled = NO;
    [self addSubview:_titleLabel];
    
    // 图片
    _imageView = [[UIImageView alloc] init];
    [_imageView setContentCompressionResistancePriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisHorizontal];
    _imageView.translatesAutoresizingMaskIntoConstraints = NO;
    _imageView.userInteractionEnabled = NO;
    [self addSubview:_imageView];
}

#pragma mark - 设置图片
- (void)SJZSetNormalImage:(nullable UIImage *)normalImage highlightedImage:(nullable UIImage *)highlightedImage {
    [self SJZSetNormalImage:normalImage highlightedImage:highlightedImage selectedImage:nil selectedHigImage:nil disabledImage:nil];
}

- (void)SJZSetNormalImage:(nullable UIImage *)normalImage disabledImage:(nullable UIImage *)disabledImage {
    [self SJZSetNormalImage:normalImage highlightedImage:nil selectedImage:nil selectedHigImage:nil disabledImage:disabledImage];
}

- (void)SJZSetNormalImage:(nullable UIImage *)normalImage selectedImage:(nullable UIImage *)selectedImage {
    [self SJZSetNormalImage:normalImage highlightedImage:nil selectedImage:selectedImage selectedHigImage:nil disabledImage:nil];
}

- (void)SJZSetNormalImage:(nullable UIImage *)normalImage highlightedImage:(nullable UIImage *)highlightedImage selectedImage:(nullable UIImage *)selectedImage selectedHigImage:(nullable UIImage *)selectedHigImage disabledImage:(nullable UIImage *)disabledImage {
    if(normalImage) {[self SJZSetImage:normalImage forState:UIControlStateNormal];}
    if(highlightedImage) {[self SJZSetImage:highlightedImage forState:UIControlStateHighlighted];}
    if(selectedImage) {[self SJZSetImage:selectedImage forState:UIControlStateSelected];}
    if(selectedHigImage) {[self SJZSetImage:selectedHigImage forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledImage) {[self SJZSetImage:disabledImage forState:UIControlStateDisabled];}
}

- (void)SJZSetImage:(UIImage *)image forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalImage = image;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedImage = image;
    }else if(state == UIControlStateSelected) {
        self.selectedImage = image;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigImage = image;
    }else if(state == UIControlStateDisabled) {
        self.disabledImage = image;
    }
    
    [self setButtonPro:self.state];
}

#pragma mark - 设置文字
- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle highlightedTitle:(nullable NSString *)highlightedTitle {
    [self SJZSetNormalTitle:normalTitle highlightedTitle:highlightedTitle selectedTitle:nil selectedHigTitle:nil disabledTitle:nil];
}

- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle disabledTitle:(nullable NSString *)disabledTitle {
    [self SJZSetNormalTitle:normalTitle highlightedTitle:nil selectedTitle:nil selectedHigTitle:nil disabledTitle:disabledTitle];
}

- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle selectedTitle:(nullable NSString *)selectedTitle {
    [self SJZSetNormalTitle:normalTitle highlightedTitle:nil selectedTitle:selectedTitle selectedHigTitle:nil disabledTitle:nil];
}

- (void)SJZSetNormalTitle:(nullable NSString *)normalTitle highlightedTitle:(nullable NSString *)highlightedTitle selectedTitle:(nullable NSString *)selectedTitle selectedHigTitle:(nullable NSString *)selectedHigTitle disabledTitle:(nullable NSString *)disabledTitle {
    if(normalTitle) {[self SJZSetTitle:normalTitle forState:UIControlStateNormal];}
    if(highlightedTitle) {[self SJZSetTitle:highlightedTitle forState:UIControlStateHighlighted];}
    if(selectedTitle) {[self SJZSetTitle:selectedTitle forState:UIControlStateSelected];}
    if(selectedHigTitle) {[self SJZSetTitle:selectedHigTitle forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledTitle) {[self SJZSetTitle:disabledTitle forState:UIControlStateDisabled];}
}

- (void)SJZSetTitle:(NSString *)title forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalTitle = title;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedTitle = title;
    }else if(state == UIControlStateSelected) {
        self.selectedTitle = title;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigTitle = title;
    }else if(state == UIControlStateDisabled) {
        self.disabledTitle = title;
    }
    
    [self setButtonPro:self.state];
}

#pragma mark - 设置文字颜色
- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor highlightedTitleColor:(nullable UIColor *)highlightedTitleColor {
    [self SJZSetNormalTitleColor:normalTitleColor highlightedTitleColor:highlightedTitleColor selectedTitleColor:nil selectedHigTitleColor:nil disabledTitleColor:nil];
}

- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor disabledTitleColor:(nullable UIColor *)disabledTitleColor {
    [self SJZSetNormalTitleColor:normalTitleColor highlightedTitleColor:nil selectedTitleColor:nil selectedHigTitleColor:nil disabledTitleColor:disabledTitleColor];
}

- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor selectedTitleColor:(nullable UIColor *)selectedTitleColor {
    [self SJZSetNormalTitleColor:normalTitleColor highlightedTitleColor:nil selectedTitleColor:selectedTitleColor selectedHigTitleColor:nil disabledTitleColor:nil];
}

- (void)SJZSetNormalTitleColor:(nullable UIColor *)normalTitleColor highlightedTitleColor:(nullable UIColor *)highlightedTitleColor selectedTitleColor:(nullable UIColor *)selectedTitleColor selectedHigTitleColor:(nullable UIColor *)selectedHigTitleColor disabledTitleColor:(nullable UIColor *)disabledTitleColor {
    if(normalTitleColor) {[self SJZSetTitleColor:normalTitleColor forState:UIControlStateNormal];}
    if(highlightedTitleColor) {[self SJZSetTitleColor:highlightedTitleColor forState:UIControlStateHighlighted];}
    if(selectedTitleColor) {[self SJZSetTitleColor:selectedTitleColor forState:UIControlStateSelected];}
    if(selectedHigTitleColor) {[self SJZSetTitleColor:selectedHigTitleColor forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledTitleColor) {[self SJZSetTitleColor:disabledTitleColor forState:UIControlStateDisabled];}
}

- (void)SJZSetTitleColor:(UIColor *)color forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalTitleColor = color;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedTitleColor = color;
    }else if(state == UIControlStateSelected) {
        self.selectedTitleColor = color;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigTitleColor = color;
    }else if(state == UIControlStateDisabled) {
        self.disabledTitleColor = color;
    }
    
    [self setButtonPro:self.state];
}

#pragma mark - 设置背景颜色
- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor highlightedBackgroundColor:(nullable UIColor *)highlightedBackgroundColor {
    [self SJZSetNormalBackgroundColor:normalBackgroundColor highlightedBackgroundColor:highlightedBackgroundColor selectedBackgroundColor:nil selectedHigBackgroundColor:nil disabledBackgroundColor:nil];
}

- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor disabledBackgroundColor:(nullable UIColor *)disabledBackgroundColor {
    [self SJZSetNormalBackgroundColor:normalBackgroundColor highlightedBackgroundColor:nil selectedBackgroundColor:nil selectedHigBackgroundColor:nil disabledBackgroundColor:disabledBackgroundColor];
}

- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor selectedBackgroundColor:(nullable UIColor *)selectedBackgroundColor {
    [self SJZSetNormalBackgroundColor:normalBackgroundColor highlightedBackgroundColor:nil selectedBackgroundColor:selectedBackgroundColor selectedHigBackgroundColor:nil disabledBackgroundColor:nil];
}

- (void)SJZSetNormalBackgroundColor:(nullable UIColor *)normalBackgroundColor highlightedBackgroundColor:(nullable UIColor *)highlightedBackgroundColor selectedBackgroundColor:(nullable UIColor *)selectedBackgroundColor selectedHigBackgroundColor:(nullable UIColor *)selectedHigBackgroundColor disabledBackgroundColor:(nullable UIColor *)disabledBackgroundColor {
    if(normalBackgroundColor) {[self SJZSetBackgroundColor:normalBackgroundColor forState:UIControlStateNormal];}
    if(highlightedBackgroundColor) {[self SJZSetBackgroundColor:highlightedBackgroundColor forState:UIControlStateHighlighted];}
    if(selectedBackgroundColor) {[self SJZSetBackgroundColor:selectedBackgroundColor forState:UIControlStateSelected];}
    if(selectedHigBackgroundColor) {[self SJZSetBackgroundColor:selectedHigBackgroundColor forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledBackgroundColor) {[self SJZSetBackgroundColor:disabledBackgroundColor forState:UIControlStateDisabled];}
}

- (void)SJZSetBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalBackgroundColor = color;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedBackgroundColor = color;
    }else if(state == UIControlStateSelected) {
        self.selectedBackgroundColor = color;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigBackgroundColor = color;
    }else if(state == UIControlStateDisabled) {
        self.disabledBackgroundColor = color;
    }
    
    [self setButtonPro:self.state];
}

#pragma mark - 设置背景图片
- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage highlightedBackgroundImage:(nullable UIImage *)highlightedBackgroundImage {
    [self SJZSetNormalBackgroundImage:normalBackgroundImage highlightedBackgroundImage:highlightedBackgroundImage selectedBackgroundImage:nil selectedHigBackgroundImage:nil disabledBackgroundImage:nil];
}

- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage disabledBackgroundImage:(nullable UIImage *)disabledBackgroundImage {
    [self SJZSetNormalBackgroundImage:normalBackgroundImage highlightedBackgroundImage:nil selectedBackgroundImage:nil selectedHigBackgroundImage:nil disabledBackgroundImage:disabledBackgroundImage];
}

- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage selectedImage:(nullable UIImage *)selectedBackgroundImage {
    [self SJZSetNormalBackgroundImage:normalBackgroundImage highlightedBackgroundImage:nil selectedBackgroundImage:selectedBackgroundImage selectedHigBackgroundImage:nil disabledBackgroundImage:nil];
}

- (void)SJZSetNormalBackgroundImage:(nullable UIImage *)normalBackgroundImage highlightedBackgroundImage:(nullable UIImage *)highlightedBackgroundImage selectedBackgroundImage:(nullable UIImage *)selectedBackgroundImage selectedHigBackgroundImage:(nullable UIImage *)selectedHigBackgroundImage disabledBackgroundImage:(nullable UIImage *)disabledBackgroundImage {
    if(normalBackgroundImage) {[self SJZSetBackgroundImage:normalBackgroundImage forState:UIControlStateNormal];}
    if(highlightedBackgroundImage) {[self SJZSetBackgroundImage:highlightedBackgroundImage forState:UIControlStateHighlighted];}
    if(selectedBackgroundImage) {[self SJZSetBackgroundImage:selectedBackgroundImage forState:UIControlStateSelected];}
    if(selectedHigBackgroundImage) {[self SJZSetBackgroundImage:selectedHigBackgroundImage forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledBackgroundImage) {[self SJZSetBackgroundImage:disabledBackgroundImage forState:UIControlStateDisabled];}
}

- (void)SJZSetBackgroundImage:(UIImage *)image forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalBackgroundImage = image;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedBackgroundImage = image;
    }else if(state == UIControlStateSelected) {
        self.selectedBackgroundImage = image;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigBackgroundImage = image;
    }else if(state == UIControlStateDisabled) {
        self.disabledBackgroundImage = image;
    }
    
    [self setButtonPro:self.state];
}


#pragma mark - 设置边框颜色
- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor highlightedBorderColor:(nullable UIColor *)highlightedBorderColor {
    [self SJZSetNormalBorderColor:normalBorderColor highlightedBorderColor:highlightedBorderColor selectedBorderColor:nil selectedHigBorderColor:nil disabledBorderColor:nil];
}

- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor disabledBorderColor:(nullable UIColor *)disabledBorderColor {
    [self SJZSetNormalBorderColor:normalBorderColor highlightedBorderColor:nil selectedBorderColor:nil selectedHigBorderColor:nil disabledBorderColor:disabledBorderColor];
}

- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor selectedBorderColor:(nullable UIColor *)selectedBorderColor {
    [self SJZSetNormalBorderColor:normalBorderColor highlightedBorderColor:nil selectedBorderColor:selectedBorderColor selectedHigBorderColor:nil disabledBorderColor:nil];
}

- (void)SJZSetNormalBorderColor:(nullable UIColor *)normalBorderColor highlightedBorderColor:(nullable UIColor *)highlightedBorderColor selectedBorderColor:(nullable UIColor *)selectedBorderColor selectedHigBorderColor:(nullable UIColor *)selectedHigBorderColor disabledBorderColor:(nullable UIColor *)disabledBorderColor {
    if(normalBorderColor) {[self SJZSetBorderColor:normalBorderColor forState:UIControlStateNormal];}
    if(highlightedBorderColor) {[self SJZSetBorderColor:highlightedBorderColor forState:UIControlStateHighlighted];}
    if(selectedBorderColor) {[self SJZSetBorderColor:selectedBorderColor forState:UIControlStateSelected];}
    if(selectedHigBorderColor) {[self SJZSetBorderColor:selectedHigBorderColor forState:UIControlStateSelected | UIControlStateHighlighted];}
    if(disabledBorderColor) {[self SJZSetBorderColor:disabledBorderColor forState:UIControlStateDisabled];}
}

- (void)SJZSetBorderColor:(UIColor *)color forState:(UIControlState)state {
    if(state == UIControlStateNormal) {
        self.normalBorderColor = color;
    }else if(state == UIControlStateHighlighted) {
        self.highlightedBorderColor = color;
    }else if(state == UIControlStateSelected) {
        self.selectedBorderColor = color;
    }else if(state == (UIControlStateSelected | UIControlStateHighlighted)) {
        self.selectedHigBorderColor = color;
    }else if(state == UIControlStateDisabled) {
        self.disabledBorderColor = color;
    }
    
    [self setButtonPro:self.state];
}

#pragma mark - 设置状态
- (void)SJZSetNormal {
    if(_normalImage) {
        _imageView.image = _normalImage;
    }
    
    if(_normalTitle) {
        _titleLabel.text = _normalTitle;
    }
    
    if(_normalTitleColor) {
        _titleLabel.textColor = _normalTitleColor;
    }
    
    if(_normalBackgroundColor) {
        self.backgroundColor = _normalBackgroundColor;
    }
    
    if(_normalBackgroundImage) {
        self.backgroundImageView.image = _normalBackgroundImage;
    }
    
    if(_normalBorderColor && _borderWidth > 0) {
        self.layer.borderColor = _normalBorderColor.CGColor;
    }else {
        self.layer.borderColor = nil;
    }
}

- (void)SJZSetHighlighted {
    if(_highlightedImage) {
        _imageView.image = _highlightedImage;
    }
    
    if(_highlightedTitle) {
        _titleLabel.text = _highlightedTitle;
    }
    
    if(_highlightedTitleColor) {
        _titleLabel.textColor = _highlightedTitleColor;
    }
    
    if(_highlightedBackgroundColor) {
        self.backgroundColor = _highlightedBackgroundColor;
    }
    
    if(_highlightedBackgroundImage) {
        self.backgroundImageView.image = _highlightedBackgroundImage;
    }
    
    if(_highlightedBorderColor && _borderWidth > 0) {
        self.layer.borderColor = _highlightedBorderColor.CGColor;
    }else {
        self.layer.borderColor = nil;
    }
}

- (void)SJZSetSelected {
    if(_selectedImage) {
        _imageView.image = _selectedImage;
    }
    
    if(_selectedTitle) {
        _titleLabel.text = _selectedTitle;
    }
    
    if(_selectedTitleColor) {
        _titleLabel.textColor = _selectedTitleColor;
    }
    
    if(_selectedBackgroundColor) {
        self.backgroundColor = _selectedBackgroundColor;
    }
    
    if(_selectedBackgroundImage) {
        self.backgroundImageView.image = _selectedBackgroundImage;
    }
    
    if(_selectedBorderColor && _borderWidth > 0) {
        self.layer.borderColor = _selectedBorderColor.CGColor;
    }else {
        self.layer.borderColor = nil;
    }
}

- (void)SJZSetSelectedHig {
    if(_selectedHigImage) {
        _imageView.image = _selectedHigImage;
    }
    
    if(_selectedHigTitle) {
        _titleLabel.text = _selectedHigTitle;
    }
    
    if(_selectedHigTitleColor) {
        _titleLabel.textColor = _selectedHigTitleColor;
    }
    
    if(_selectedHigBackgroundColor) {
        self.backgroundColor = _selectedHigBackgroundColor;
    }
    
    if(_selectedHigBackgroundImage) {
        self.backgroundImageView.image = _selectedHigBackgroundImage;
    }
    
    if(_selectedHigBorderColor && _borderWidth > 0) {
        self.layer.borderColor = _selectedHigBorderColor.CGColor;
    }else {
        self.layer.borderColor = nil;
    }
}

- (void)SJZSetDisabled {
    if(_disabledImage) {
        _imageView.image = _disabledImage;
    }
    
    if(_disabledTitle) {
        _titleLabel.text = _disabledTitle;
    }
    
    if(_disabledTitleColor) {
        _titleLabel.textColor = _disabledTitleColor;
    }
    
    if(_disabledBackgroundColor) {
        self.backgroundColor = _disabledBackgroundColor;
    }
    
    if(_disabledBackgroundImage) {
        self.backgroundImageView.image = _disabledBackgroundImage;
    }
    
    if(_disabledBorderColor && _borderWidth > 0) {
        self.layer.borderColor = _disabledBorderColor.CGColor;
    }else {
        self.layer.borderColor = nil;
    }
}

#pragma mark - 布局
- (void)SJZSetLayout:(SJZButtonType)type {
    for(NSLayoutConstraint * constraint in self.constraints) {
        if([constraint.firstItem isEqual:self.imageView] || [constraint.firstItem isEqual:self.titleLabel]){
            [self removeConstraint:constraint];
        }
    }
    
    if(type == SJZButtonTypeTop) {
        [self.imageView.centerXAnchor constraintEqualToAnchor:self.containGuide.centerXAnchor].active = YES;
        [self.imageView.leftAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        [self.imageView.rightAnchor constraintLessThanOrEqualToAnchor:self.containGuide.rightAnchor].active = YES;
        [self.imageView.topAnchor constraintEqualToAnchor:self.containGuide.topAnchor].active = YES;
        
        [self.titleLabel.centerXAnchor constraintEqualToAnchor:self.containGuide.centerXAnchor].active = YES;
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.imageView.bottomAnchor constant:_middleMargin].active = YES;
        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
        [self.titleLabel.leftAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        [self.titleLabel.rightAnchor constraintLessThanOrEqualToAnchor:self.containGuide.rightAnchor].active = YES;
    }else if(type == SJZButtonTypeBottom) {
        [self.titleLabel.centerXAnchor constraintEqualToAnchor:self.containGuide.centerXAnchor].active = YES;
        [self.titleLabel.leftAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        [self.titleLabel.rightAnchor constraintLessThanOrEqualToAnchor:self.containGuide.rightAnchor].active = YES;
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.containGuide.topAnchor].active = YES;
        
        [self.imageView.centerXAnchor constraintEqualToAnchor:self.containGuide.centerXAnchor].active = YES;
        [self.imageView.topAnchor constraintEqualToAnchor:self.titleLabel.bottomAnchor constant:_middleMargin].active = YES;
        [self.imageView.bottomAnchor constraintEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
        [self.imageView.leftAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        [self.imageView.rightAnchor constraintLessThanOrEqualToAnchor:self.containGuide.rightAnchor].active = YES;
    }else if(type == SJZButtonTypeLeft) {
        [self.imageView.centerYAnchor constraintEqualToAnchor:self.containGuide.centerYAnchor].active = YES;
        [self.imageView.topAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.topAnchor].active = YES;
        [self.imageView.bottomAnchor constraintLessThanOrEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
        [self.imageView.leftAnchor constraintEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.containGuide.centerYAnchor].active = YES;
        [self.titleLabel.leftAnchor constraintEqualToAnchor:self.imageView.rightAnchor constant:_middleMargin].active = YES;
        [self.titleLabel.rightAnchor constraintEqualToAnchor:self.containGuide.rightAnchor].active = YES;
        [self.titleLabel.topAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.topAnchor].active = YES;
        [self.titleLabel.bottomAnchor constraintLessThanOrEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
    }else if(type == SJZButtonTypeRight) {
        [self.titleLabel.centerYAnchor constraintEqualToAnchor:self.containGuide.centerYAnchor].active = YES;
        [self.titleLabel.topAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.topAnchor].active = YES;
        [self.titleLabel.bottomAnchor constraintLessThanOrEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
        [self.titleLabel.leftAnchor constraintEqualToAnchor:self.containGuide.leftAnchor].active = YES;
        
        [self.imageView.centerYAnchor constraintEqualToAnchor:self.containGuide.centerYAnchor].active = YES;
        [self.imageView.leftAnchor constraintEqualToAnchor:self.titleLabel.rightAnchor constant:_middleMargin].active = YES;
        [self.imageView.rightAnchor constraintEqualToAnchor:self.containGuide.rightAnchor].active = YES;
        [self.imageView.topAnchor constraintGreaterThanOrEqualToAnchor:self.containGuide.topAnchor].active = YES;
        [self.imageView.bottomAnchor constraintLessThanOrEqualToAnchor:self.containGuide.bottomAnchor].active = YES;
    }
}

- (void)setMiddleMargin:(CGFloat)middleMargin {
    _middleMargin = middleMargin;
    
    [self SJZSetLayout:self.buttonType];
}

// 设置布局
- (void)setButtonType:(SJZButtonType)buttonType {
    _buttonType = buttonType;
    
    [self SJZSetLayout:buttonType];
}

// 边界宽度
- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    
    self.layer.borderWidth = borderWidth;
    [self setButtonPro:self.state];
}

- (void)setButtonPro:(UIControlState)state {
    switch (state) {
        case UIControlStateNormal:
            [self SJZSetNormal];
            break;
        case UIControlStateHighlighted:
            [self SJZSetHighlighted];
            break;
        case UIControlStateSelected:
            [self SJZSetSelected];
            break;
        case UIControlStateSelected | UIControlStateHighlighted:
            [self SJZSetSelectedHig];
            break;
        case UIControlStateDisabled:
            [self SJZSetDisabled];
            break;
        default:
            break;
    }
}

#pragma mark - 设置高亮状态
- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    if(self.selected) {
        [self SJZSetSelectedHig];
    }else {
        [self SJZSetHighlighted];
    }
    return YES;
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    if(self.selected) {
        [self SJZSetSelected];
    }else {
        [self SJZSetNormal];
    }
}

- (void)cancelTrackingWithEvent:(UIEvent *)event {
    if(self.selected) {
        [self SJZSetSelected];
    }else {
        [self SJZSetNormal];
    }
}

#pragma mark - 设置状态
- (void)setSelected:(BOOL)selected {
    if(self.selected == selected) {
        return;
    }
    [super setSelected:selected];
    if(selected) {
        [self SJZSetSelected];
    }else {
        [self SJZSetNormal];
    }
}

- (void)setEnabled:(BOOL)enabled {
    if(self.enabled == enabled) {
        return;
    }
    [super setEnabled:enabled];
    if(enabled) {
        [self SJZSetNormal];
    }else {
        [self SJZSetDisabled];
    }
}

@end

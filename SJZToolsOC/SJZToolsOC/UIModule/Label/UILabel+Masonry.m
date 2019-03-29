//
//  UILabel+Masonry.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UILabel+Masonry.h"
#import "UILabel+base.h"

@implementation UILabel (Masonry)

+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    return [self sjz_labelWithText:text textColor:textColor font:font lines:1 textAlignment:NSTextAlignmentLeft backColor:[UIColor clearColor] superView:superView constraints:block];
}

+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font backColor:(UIColor *)backColor superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    return [self sjz_labelWithText:text textColor:textColor font:font lines:1 textAlignment:NSTextAlignmentLeft backColor:backColor superView:superView constraints:block];
}

+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    return [self sjz_labelWithText:text textColor:textColor font:font lines:lines textAlignment:NSTextAlignmentLeft backColor:[UIColor clearColor] superView:superView constraints:block];
}

+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines textAlignment:(NSTextAlignment)alignment superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    return [self sjz_labelWithText:text textColor:textColor font:font lines:lines textAlignment:alignment backColor:[UIColor clearColor] superView:superView constraints:block];
}

+ (instancetype)sjz_labelWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font lines:(NSInteger)lines textAlignment:(NSTextAlignment)alignment backColor:(UIColor *)backColor superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    UILabel * label = [[UILabel alloc] init];
    
    label.sjz_text(text)
    .sjz_textColor(textColor)
    .sjz_font(font)
    .sjz_numberOfLines(lines)
    .sjz_textAlignment(alignment)
    .sjz_backgorundColor(backColor);
    
    [superView addSubview:label];
    
    if(superView && block) {
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            block(make);
        }];
    }
    
    return label;
}

@end

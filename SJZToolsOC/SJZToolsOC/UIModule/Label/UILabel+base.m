//
//  UILabel+base.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UILabel+base.h"

@implementation UILabel (base)

- (UILabel * _Nonnull (^)(NSString * _Nonnull))sjz_text {
    return ^UILabel * (NSString * text) {
        self.text = text;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIFont * _Nonnull))sjz_font {
    return ^UILabel * (UIFont * font) {
        self.font = font;
        return self;
    };
}

- (UILabel * _Nonnull (^)(UIColor * _Nonnull))sjz_textColor {
    return ^UILabel * (UIColor * color) {
        self.textColor = color;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSTextAlignment))sjz_textAlignment {
    return ^UILabel * (NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSInteger))sjz_numberOfLines {
    return ^UILabel * (NSInteger numberOflines) {
        self.numberOfLines = numberOflines;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSAttributedString * _Nonnull))sjz_attributedText {
    return ^UILabel * (NSAttributedString * attributedStr) {
        self.attributedText = attributedStr;
        return self;
    };
}

- (UILabel * _Nonnull (^)(NSLineBreakMode))sjz_lineBreakMode {
    return ^UILabel * (NSLineBreakMode breakMode) {
        self.lineBreakMode = breakMode;
        return self;
    };
}

@end

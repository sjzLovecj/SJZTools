//
//  NSMutableAttributedString+base.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "NSMutableAttributedString+base.h"

@implementation NSMutableAttributedString (base)

- (NSMutableAttributedString * _Nonnull (^)(NSString * _Nonnull, UIFont * _Nonnull))sjz_font {
    return ^NSMutableAttributedString * (NSString * str, UIFont * font) {
        NSRange range = [self.string rangeOfString:str];
        [self addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}

@end

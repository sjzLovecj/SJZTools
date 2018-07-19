//
//  NSAttributedString+Extension.m
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "NSAttributedString+Extension.h"

@implementation NSAttributedString (Extension)

- (CGFloat)widthWithHeight:(CGFloat)height {
    CGSize size = [self boundingRectWithSize: CGSizeMake(MAXFLOAT, height)
                                     options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     context: nil].size;
    
    return ceil(size.width);
}

- (CGFloat)heightWithWidth:(CGFloat)width {
    CGSize size = [self boundingRectWithSize: CGSizeMake(width, MAXFLOAT)
                                     options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                     context: nil].size;
    
    return ceil(size.height);
}

@end

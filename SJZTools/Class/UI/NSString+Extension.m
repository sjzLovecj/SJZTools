//
//  NSString+Extension.m
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (CGFloat)widthWithHeight:(CGFloat)heith font:(UIFont *)font {
    CGSize size =[self boundingRectWithSize: CGSizeMake(MAXFLOAT, heith)
                                    options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                 attributes: @{NSFontAttributeName : font}
                                    context: nil].size;
    
    return size.width;
}

- (CGFloat)heightWithWidth:(CGFloat)width font:(UIFont *)font {
    CGSize size =[self boundingRectWithSize: CGSizeMake(width, MAXFLOAT)
                                    options: NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                 attributes: @{NSFontAttributeName : font}
                                    context: nil].size;
    
    return size.height;
}

@end

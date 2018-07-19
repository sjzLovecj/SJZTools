//
//  UIColor+Extension.m
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

/**
 根据十六进制数值初始化Color

 @param hex 十六进制数值
 @return UIColor实例
 */
+ (instancetype)initFromHex:(NSInteger) hex {
    if(hex < 0xFFFFFF) {
        return [[UIColor alloc] initWithRed: ((hex & 0xFF0000) >> 16) / 255.0
                                      green: ((hex & 0xFF00) >> 8) / 255.0
                                       blue: (hex & 0xFF00) / 255.0
                                      alpha: 1];
    }else {
        return UIColor.whiteColor;
    }
}

/**
 根据十六进制数值初始化Color
 
 @param hexStr 十六进制数值字符串
 @return UIColor实例
 */
+ (instancetype)initFromHexStr:(NSString *)hexStr {
    // 复制字符串
    NSMutableString * str = hexStr.copy;
    if([hexStr hasPrefix:@"0x"]) {
        [str stringByReplacingOccurrencesOfString:@"0x" withString:@""];
    }else if([hexStr hasPrefix:@"0X"]) {
        [str stringByReplacingOccurrencesOfString:@"0X" withString:@""];
    }else if([hexStr hasPrefix:@"#"]) {
        [str stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    
    NSInteger hex = 0x0;
    [[NSScanner scannerWithString:str] scanInteger:&hex];
    
    return [self initFromHex:hex];
}

@end

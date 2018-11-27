//
//  UIColor+Extension.h
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)

/**
 根据十六进制数值初始化Color
 
 @param hex 十六进制数值
 @return UIColor实例
 */
+ (instancetype)initFromHex:(NSInteger) hex;

/**
 根据十六进制数值初始化Color
 
 @param hexStr 十六进制数值字符串
 @return UIColor实例
 */
+ (instancetype)initFromHexStr:(NSString *)hexStr;

@end

NS_ASSUME_NONNULL_END

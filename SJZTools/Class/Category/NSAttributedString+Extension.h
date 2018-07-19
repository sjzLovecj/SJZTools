//
//  NSAttributedString+Extension.h
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/17.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (Extension)

/**
 获取富文本的宽度

 @param height 高度
 @return 宽度
 */
- (CGFloat)widthWithHeight:(CGFloat)height;

/**
 获取富文本的高度

 @param width 宽度
 @return 高度
 */
- (CGFloat)heightWithWidth:(CGFloat)width;

@end

//
//  UIButton+chain.h
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (chain)

// 设置title
- (UIButton *(^)(NSString *))setNorTitle;
- (UIButton *(^)(NSString *))setHigTitle;
- (UIButton *(^)(NSString *))setSelTitle;

// 设置title颜色
- (UIButton *(^)(UIColor *))setNorTitleColor;
- (UIButton *(^)(UIColor *))setHigTitleColor;
- (UIButton *(^)(UIColor *))setSelTitleColor;

// 设置图片
- (UIButton *(^)(NSString *))setNorImage;
- (UIButton *(^)(NSString *))setHigImage;
- (UIButton *(^)(NSString *))setSelImage;


@end

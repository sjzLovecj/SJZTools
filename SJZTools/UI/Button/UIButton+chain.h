//
//  UIButton+chain.h
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+chain.h"

@interface UIButton (chain)

// 设置title
- (UIButton *(^)(NSString *))sjzNorTitle;
- (UIButton *(^)(NSString *))sjzHigTitle;
- (UIButton *(^)(NSString *))sjzSelTitle;

// 设置title颜色
- (UIButton *(^)(UIColor *))sjzNorTitleColor;
- (UIButton *(^)(UIColor *))sjzHigTitleColor;
- (UIButton *(^)(UIColor *))sjzSelTitleColor;

// 设置图片
- (UIButton *(^)(UIImage *))sjzNorImage;
- (UIButton *(^)(UIImage *))sjzHigImage;
- (UIButton *(^)(UIImage *))sjzSelImage;

// 设置字体
- (UIButton *(^)(UIFont *))sjzFont;



@end

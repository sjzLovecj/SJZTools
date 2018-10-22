//
//  UIButton+Init.m
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIButton+Init.h"

@implementation UIButton (Init)

+ (instancetype)buttonWithSuperView:(UIView *)superView config:(void (^) (UIButton * button))configblock {
    UIButton * button = [[UIButton alloc] init];
    configblock(button);
    
    [superView addSubview:button];
    return button;
}

@end

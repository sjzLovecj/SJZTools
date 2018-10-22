//
//  UIButton+Init.h
//  SJZTools
//
//  Created by SJZ on 2018/7/31.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+chain.h"

@interface UIButton (Init)

+ (instancetype)buttonWithSuperView:(UIView *)superView config:(void (^) (UIButton * button))configblock;

@end

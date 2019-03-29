//
//  UIView+Masonry.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/26.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UIView+Masonry.h"
#import "UIView+base.h"

@implementation UIView (Masonry)

+ (instancetype)sjz_viewWithBackColor:(UIColor *)color superView:(UIView *)superView constraints:(SJZMASConstraint)block {
    return [self sjz_viewWithBackColor:color superView:superView constraints:block tapGesture:nil];
}

+ (instancetype)sjz_viewWithBackColor:(UIColor *)color superView:(UIView *)superView constraints:(SJZMASConstraint)block tapGesture:(nullable SJZGestureBlock)tapBlock {
    UIView * view = [[UIView alloc] init];
    view.backgroundColor = color;
    [superView addSubview:view];
    
    if(superView && block) {
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            block(make);
        }];
    }
    
    if(tapBlock) {
        [view addTapGestureWithcallBack:tapBlock];
    }
    
    return view;
}

@end

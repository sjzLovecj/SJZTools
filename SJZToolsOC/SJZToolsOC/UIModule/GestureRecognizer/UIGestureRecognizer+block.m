//
//  UIGestureRecognizer+block.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "UIGestureRecognizer+block.h"
#import <objc/runtime.h>

#define GestureKey @"GestureKey"


@implementation UIGestureRecognizer (block)

- (SJZGestureBlock)gestureBlock {
    return objc_getAssociatedObject(self, GestureKey);
}

- (void)setGestureBlock:(SJZGestureBlock)gestureBlock {
    objc_setAssociatedObject(self, GestureKey, gestureBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    [self removeTarget:self action:@selector(private_gesture:)];
    if(gestureBlock) {
        [self addTarget:self action:@selector(private_gesture:)];
    }
}

- (void)private_gesture:(UIGestureRecognizer *)sender {
    SJZGestureBlock gestureBlock = self.gestureBlock;
    
    if(gestureBlock) {
        gestureBlock(sender);
    }
}

@end

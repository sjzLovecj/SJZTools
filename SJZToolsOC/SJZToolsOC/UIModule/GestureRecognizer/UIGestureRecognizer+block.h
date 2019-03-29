//
//  UIGestureRecognizer+block.h
//  SJZToolsOC
//
//  Created by SJZ on 2019/3/25.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJZUIModuleTools.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIGestureRecognizer (block)

@property (nonatomic, copy) SJZGestureBlock gestureBlock;

@end

NS_ASSUME_NONNULL_END

//
//  UIApplication+TopView.h
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/12.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (TopView)

// 获取当前window
- (UIWindow *)mainWindow;

// 获取当前controller
- (UIViewController *)currentViewController;

// 获取当前导航栏
- (UINavigationController *)currentNavigationController;

@end

NS_ASSUME_NONNULL_END

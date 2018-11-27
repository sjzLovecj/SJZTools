//
//  UIApplication+TopView.m
//  SJZToolsOC
//
//  Created by SJZ on 2018/7/12.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "UIApplication+TopView.h"

@implementation UIApplication (TopView)

- (UIWindow *)mainWindow {
    return self.keyWindow;
}

- (UIViewController *)currentViewController {
    UIViewController * rootViewController = [[self mainWindow] rootViewController];
    return [self getCurrentViewController:rootViewController];
}

- (UIViewController *)getCurrentViewController:(UIViewController *)controller {
    if([controller isKindOfClass:[UINavigationController class]]) {
        return [self getCurrentViewController:[(UINavigationController *)controller visibleViewController]];
    }else if([controller isKindOfClass:[UITabBarController class]]) {
        return [self getCurrentViewController:[(UITabBarController *)controller selectedViewController]];
    }else {
        if(controller.presentedViewController) {
            return [self getCurrentViewController:controller.presentedViewController];
        }else {
            return controller;
        }
    }
}

- (UINavigationController *)currentNavigationController {
    return [[self currentViewController] navigationController];
}

@end

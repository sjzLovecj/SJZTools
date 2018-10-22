//
//  ViewController.m
//  SJZTools
//
//  Created by SJZ on 2018/7/19.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Init.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * button = [UIButton buttonWithSuperView:self.view config:^(UIButton *button) {
        button.setNorTitle(@"确定")
        .setNorTitleColor([UIColor redColor]);
    }];
    button.frame = CGRectMake(100, 100, 100, 100);
}

@end

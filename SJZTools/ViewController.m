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
@property (nonatomic, strong) UILabel * label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [UIButton buttonWithTitle:@"确定" norColor:[UIColor whiteColor] font:[UIFont systemFontOfSize:15] backColor:[UIColor redColor] superView:self.view complete:^(UIButton *btn) {
//        btn.frame = CGRectMake(100, 200, 100, 100);
//    } touchUpBlock:^(UIButton *btn) {
//
//    }];
    
    [UIButton buttonWithTitle:@"确定" norColor:[UIColor whiteColor] selColor:[UIColor redColor] font:[UIFont systemFontOfSize:15] norImage:nil selImage:nil backColor:[UIColor redColor] superView:self.view complete:^(UIButton *btn) {
        btn.frame = CGRectMake(100, 200, 100, 100);
    } touchUpBlock:^(UIButton *btn) {
        
    }];
}



@end

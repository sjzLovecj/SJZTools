//
//  ViewController.m
//  SJZTools
//
//  Created by SJZ on 2018/7/19.
//  Copyright © 2018年 SJZ. All rights reserved.
//

#import "ViewController.h"
#import "SJZToolsUI.h"


@interface ViewController ()
@property (nonatomic, strong) UILabel * label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UIButton buttonWithTitle:@"123"
                     norColor:nil
                     heiColor:nil
                         font:[UIFont systemFontOfSize:12]
                     norImage:nil
                     heiImage:nil
                    backColor:[UIColor redColor]
                  borderWidth:0
                  borderColor:nil
                 cornerRadius:0
                    superView:self.view
                     complete:^(UIButton *btn) {
                     btn.frame = CGRectMake(100, 200, 100, 100);
                 } touchUpBlock:^(UIButton *btn) {
                     NSLog(@"我我我我我哦我");
                 }];
}



@end

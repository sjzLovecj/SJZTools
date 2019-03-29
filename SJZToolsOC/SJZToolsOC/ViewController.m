//
//  ViewController.m
//  SJZToolsOC
//
//  Created by SJZ on 2019/2/22.
//  Copyright © 2019 SJZ. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) NSString * str;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [UIView sjz_viewWithBackColor:[UIColor redColor] superView:self.view constraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.height.mas_equalTo(50);
        make.top.mas_equalTo(100);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[ViewController new] animated:YES];
}

- (void)dealloc {
    NSLog(@"我释放了");
}


@end

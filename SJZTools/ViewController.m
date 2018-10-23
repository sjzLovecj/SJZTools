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
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    label.backgroundColor = [UIColor redColor];
    label.text = @"我是大神，大神";
    label.textColor = [UIColor greenColor];
    label.font = [UIFont systemFontOfSize:20];
    label.enabled = NO;
    
    label.adjustsFontSizeToFitWidth = YES;
//    label.allowsDefaultTighteningForTruncation = YES;
    
    [self.view addSubview:label];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.text = @"你们好";
}



@end

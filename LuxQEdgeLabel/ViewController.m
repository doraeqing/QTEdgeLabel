//
//  ViewController.m
//  LuxQEdgeLabel
//
//  Created by lq09984 on 16/4/7.
//  Copyright © 2016年 L.Q. All rights reserved.
//

#import "ViewController.h"
#import "LuxQEdgeLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LuxQEdgeLabel *qlabel = [[LuxQEdgeLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 21)];
    qlabel.textAlignment = NSTextAlignmentCenter;
    qlabel.text = @"测试用的";
    ///添加四周边距
    qlabel.edgeInset = UIEdgeInsetsMake(5, 30, 5, 5);
    qlabel.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:qlabel];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 21)];
    label.text = @"测试用的";
    label.backgroundColor = [UIColor orangeColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  HYProgressView
//
//  Created by  huiyuan on 2017/8/14.
//  Copyright © 2017年 张宇超. All rights reserved.
//

#import "ViewController.h"
#import "HYProView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    HYProView *proView = [[HYProView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 100)];
    [proView titleArr:@[@"1",@"2",@"3"] index:2];//titleArr:
    [self.view addSubview:proView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//
//  SecViewController.m
//  3DTouchDemo
//
//  Created by 小城生活 on 16/5/13.
//  Copyright © 2016年 小城生活. All rights reserved.
//

#import "SecViewController.h"


@interface SecViewController()
{
    
}

@end

@implementation SecViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"第二个界面";
    UIButton *btnBack = [UIButton buttonWithType:UIButtonTypeCustom];
    [btnBack setTitle:@"返回" forState:UIControlStateNormal];
    [btnBack addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    btnBack.frame = CGRectMake(0, 0, 40, 30);
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btnBack];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    
}
-(void)backAction{
    if (self.isPressure) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
-(void)dealloc{
    NSLog(@"%@",self);
}
@end

//
//  PreViewController.m
//  3DTouchDemo
//
//  Created by 小城生活 on 16/5/13.
//  Copyright © 2016年 小城生活. All rights reserved.
//

#import "PreViewController.h"

@interface PreViewController ()

@end

@implementation PreViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(void)viewWillAppear:(BOOL)animated{
    self.title = @"详细信息";
}

/**
 *  实现预览时，上划出现的选项
 *
 *  @return UIPreviewAction 的数组
 */
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    /**
     *  默认形式
     */
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"滑动选项一" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"滑动选项一点击");

    }];
    /**
     *  选择形式
     */
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"滑动选项二" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"滑动选项二点击");
        
    }];
    /**
     *  默认形式
     */
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"滑动选项三" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"滑动选项三点击");
        
    }];
    return @[action1,action2,action3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

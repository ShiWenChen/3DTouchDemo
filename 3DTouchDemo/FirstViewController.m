//
//  FirstViewController.m
//  3DTouchDemo
//
//  Created by 小城生活 on 16/5/13.
//  Copyright © 2016年 小城生活. All rights reserved.
//

#import "FirstViewController.h"
#import "PreViewController.h"

@interface FirstViewController()<UIViewControllerPreviewingDelegate,UIPreviewActionItem>
{
    
}

@end
@implementation FirstViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    /**
     *  判断3DTouch是否可用
     */
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        
        [self registerForPreviewingWithDelegate:(id)self sourceView:self.view];
        
    }
    
}
/**
 *  点击预览，进入该方法

 */
-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    PreViewController *previewController = [[PreViewController alloc] init];
    previewController.view.backgroundColor = [UIColor redColor];
    return previewController;
    
}

/**
 *  继续按压进入
 */
-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end

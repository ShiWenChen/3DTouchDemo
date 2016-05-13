//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by 小城生活 on 16/5/13.
//  Copyright © 2016年 小城生活. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /**
     *  创建深按菜单前图标
     */
    UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeCompose];
    /**
     *  创建深按Item
     */
    UIApplicationShortcutItem *itemOne = [[UIApplicationShortcutItem alloc] initWithType:@"one" localizedTitle:@"第一个界面"];
    UIApplicationShortcutItem *itemTwo = [[UIApplicationShortcutItem alloc] initWithType:@"two" localizedTitle:@"第二个界面" localizedSubtitle:@"小标题" icon:icon2 userInfo:nil];
    /**
     *  添加
     */
    [UIApplication sharedApplication].shortcutItems = @[itemOne,itemTwo];
    
    return YES;
}
-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    UITableViewController *controller;
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UINavigationController *navSuper = storyBoard.instantiateInitialViewController;
//    NSLog(@"%@",nav);
    if ([shortcutItem.type isEqualToString:@"one"]) {
        FirstViewController *firstController = [[FirstViewController alloc] init];
        controller = firstController;
        
    }
    if ([shortcutItem.type isEqualToString:@"two"]) {
        SecViewController *secController = [[SecViewController alloc] init];
        secController.isPressure = YES;
        controller = secController;
    }
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:controller];
    [self.window.rootViewController presentViewController:nav animated:YES completion:nil];
    
    
    
    
}


@end

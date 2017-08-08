//
//  AppDelegate.h
//  BMKDemo
//
//  Created by zhangwenjin on 15-9-4.
//  Copyright (c) 2015年 张文进. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LeftSlideViewController *slideVC;
@property (nonatomic,strong)UINavigationController *navigation;
@end


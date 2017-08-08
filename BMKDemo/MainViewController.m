//
//  MainViewController.m
//  BMKDemo
//
//  Created by zhangwenjin on 15-9-4.
//  Copyright (c) 2015年 张文进. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"主界面";
    self.view.backgroundColor = [UIColor purpleColor];
    UIButton *menu = [UIButton buttonWithType:UIButtonTypeCustom];
    menu.frame = CGRectMake(0, 0, 20, 20);
    [menu setBackgroundImage:[UIImage imageNamed:@"icon_map_tabList"] forState:UIControlStateNormal];
    [menu addTarget:self action:@selector(openOrCloseLeftList) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:menu];

    // Do any additional setup after loading the view.
}
- (void)openOrCloseLeftList{
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    if (appDelegate.slideVC.closed) {
        [appDelegate.slideVC openLeftView];
    }else{
        [appDelegate.slideVC closeLeftView];
    }
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

//
//  TabBarViewController.m
//  自定义tabbar中间按钮
//
//  Created by 丁晓雷 on 2017/11/22.
//  Copyright © 2017年 丁晓雷. All rights reserved.
//

#import "TabBarViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "MiddleViewController.h"
#import "UIView+Extension.h"
@interface TabBarViewController ()
@property (nonatomic,strong) MiddleViewController *middle;
@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    OneViewController *one = [[OneViewController alloc] init];
    one.tabBarItem.title = @"第一页";
    one.tabBarItem.image = [[UIImage imageNamed:@"tabBar_icon_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    TwoViewController *two = [[TwoViewController alloc] init];
    two.tabBarItem.title = @"第二页";
    two.tabBarItem.image = [[UIImage imageNamed:@"tabBar_icon_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    self.middle = [[MiddleViewController alloc] init];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 80,80);
    [btn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
    btn.center = self.tabBar.center;
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.y -=10;
    
    ThreeViewController *three = [[ThreeViewController alloc] init];
    three.tabBarItem.title = @"第三页";
    three.tabBarItem.image = [[UIImage imageNamed:@"tabBar_icon_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    FourViewController *four = [[FourViewController alloc] init];
    four.tabBarItem.title = @"第四页";
    four.tabBarItem.image = [[UIImage imageNamed:@"tabBar_icon_mine"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.viewControllers = @[one,two,self.middle,three,four];
   
}
- (void)btnClick
{
    
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

//
//  ViewController.m
//  DNPreferenceDemo
//
//  Created by mainone on 16/9/8.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 获取NSUserDefaults文件
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    [userDefault setObject:@"wjn" forKey:@"name"];
    [userDefault setBool:YES forKey:@"vip"];
    [userDefault setInteger:18 forKey:@"age"];
    // 立即同步
    [userDefault synchronize];
    
    NSString *name = [userDefault objectForKey:@"name"];
    BOOL vip = [userDefault boolForKey:@"vip"];
    NSInteger age = [userDefault integerForKey:@"age"];
    NSLog(@"name : %@, vip : %d, age : %d",name, vip, (int)age);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

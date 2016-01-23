//
//  TabBarController.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/22.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // ショートカットアイテムから来た時
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    
    [nc addObserver:self
           selector:@selector(kiritan)
               name:@"goKiritan"
             object:nil];

    [nc addObserver:self
           selector:@selector(itako)
               name:@"goItako"
             object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// きりたんのタブを選択
- (void)kiritan
{
    UIViewController *vc = self.viewControllers[0];
    self.selectedViewController = vc;
}

// イタコ姉さんのタブを選択
- (void)itako
{
    UINavigationController *nc = self.viewControllers[1];
    self.selectedViewController = nc;
}

@end

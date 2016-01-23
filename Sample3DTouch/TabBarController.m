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

    // ショートカットアイテムから来た時のオブザーバー登録
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    
    [nc addObserver:self selector:@selector(kiritan) name:@"goKiritan" object:nil];
    [nc addObserver:self selector:@selector(itako)   name:@"goItako"   object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    // オブザーバー削除
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - タブ選択

// きりたんのタブを選択
- (void)kiritan
{
    self.selectedViewController = self.viewControllers[0];
}

// イタコ姉さんのタブを選択
- (void)itako
{
    self.selectedViewController = self.viewControllers[1];
}

@end

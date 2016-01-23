//
//  Itako2ViewController.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/23.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "Itako2ViewController.h"

@interface Itako2ViewController ()

@end

@implementation Itako2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 3D Touch

// プレビューアクションを登録
- (NSArray <id <UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"SD イタコ姉さん"
                                                          style:UIPreviewActionStyleDefault
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                            NSLog(@"action1 selected.");
                                                        }];
    return @[action1];
}

@end

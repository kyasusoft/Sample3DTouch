//
//  Itako1ViewController.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/23.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "Itako1ViewController.h"

@interface Itako1ViewController ()

@end

@implementation Itako1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 3D Touch

// プレビューアクションを登録
- (NSArray <id <UIPreviewActionItem>> *)previewActionItems
{
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"Default"
                                                          style:UIPreviewActionStyleDefault
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                            NSLog(@"action1 selected.");
                                                        }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"Selected"
                                                          style:UIPreviewActionStyleSelected
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                            NSLog(@"action2 selected.");
                                                        }];
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"Destructive"
                                                          style:UIPreviewActionStyleDestructive
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                            NSLog(@"action3 selected.");
                                                        }];
    return @[action1, action2, action3];
}

@end

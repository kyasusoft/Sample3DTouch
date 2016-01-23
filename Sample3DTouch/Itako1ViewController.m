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
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"等身　イタコ姉さん"
                                                          style:UIPreviewActionStyleDefault
                                                        handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                                            NSLog(@"action1 selected.");
                                                        }];
    return @[action1];
}

@end

//
//  ItakoTableViewController.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/22.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "ItakoTableViewController.h"

@interface ItakoTableViewController ()

@end

@implementation ItakoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 3D Touchに反応するビューを登録（iOS 9以降でforceTouch有り）
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0) {
        if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
            // 1番目のcellを登録
            [self registerForPreviewingWithDelegate:(id)self sourceView:_cell0];
            // 2番目のcellを登録
            [self registerForPreviewingWithDelegate:(id)self sourceView:_cell1];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 3D Touch delegate

// 3D Touch peek（peekで表示するViewControllerを返却する）
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    // タッチしたcellのrectを設定する
    NSIndexPath *indexpath = [self.tableView indexPathForRowAtPoint:location];
    if (indexpath) {
        previewingContext.sourceRect = [self.tableView rectForRowAtIndexPath:indexpath];
    }
    
    // イタコ１かイタコ２のviewControllerを返却する
    if (previewingContext.sourceView == _cell0) {
        return [self.storyboard instantiateViewControllerWithIdentifier:@"view0"];
    } else {
        return [self.storyboard instantiateViewControllerWithIdentifier:@"view1"];
    }
}

// 3D Touch pop（pop先のViewControllerに遷移する）
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    // イタコ１かイタコ２の詳細画面に遷移する
    if (previewingContext.sourceView == _cell0) {
        [self performSegueWithIdentifier:@"showView0" sender:nil];
    } else {
        [self performSegueWithIdentifier:@"showView1" sender:nil];
    }
}

@end

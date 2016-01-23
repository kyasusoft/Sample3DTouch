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
    
    // 3D Touchに対応するビューを登録
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0) {
        // iOS 9 以降
        if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
            [self registerForPreviewingWithDelegate:(id)self sourceView:_cell0];
            [self registerForPreviewingWithDelegate:(id)self sourceView:_cell1];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 3D Touch peek
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    previewingContext.sourceRect = CGRectMake(0, 0, previewingContext.sourceView.frame.size.width, previewingContext.sourceView.frame.size.height);
    
    NSInteger tag = previewingContext.sourceView.tag;
    
    UIViewController *vc;

    if (tag == 0) {
        // イタコ１
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"view0"];
    } else {
        // イタコ２
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"view1"];
    }
    
    return vc;
}

// 3D Touch pop
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    NSInteger tag = previewingContext.sourceView.tag;
    
    if (tag == 0) {
        // イタコ１
        [self performSegueWithIdentifier:@"showView0" sender:nil];
    } else {
        // イタコ２
        [self performSegueWithIdentifier:@"showView1" sender:nil];
    }
}

@end

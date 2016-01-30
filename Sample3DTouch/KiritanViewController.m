//
//  KiritanViewController.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/22.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "KiritanViewController.h"

@interface KiritanViewController ()

@end

@implementation KiritanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 3Dタッチの圧力
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = touches.allObjects[0];
    
    // イメージの透明度変更（iOS 9以降でforceTouch有り）
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0) {
        if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {

            double force = touch.force;
            double max   = touch.maximumPossibleForce;
            // 押した時に透明度を下げる
            _imageView.alpha = 1.0 - force / max;
            
            _forceLabel.text = [NSString stringWithFormat:@"%0.2f", force];
            _maxLabel.text   = [NSString stringWithFormat:@"%0.2f", max];
        }
    }
}

@end

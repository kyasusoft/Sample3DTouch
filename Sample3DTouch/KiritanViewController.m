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
    UITouch *touch = [[event allTouches] anyObject];
    
    double force = touch.force;
    double max = touch.maximumPossibleForce;
    double level = 0;
    if (max != 0 ) level = force/max;
    NSLog(@"touchesMoved Max:%f Force:%f level:%f",max,force,force/max);
    
    _imageView.alpha = 1.0 - force / max;
}

@end

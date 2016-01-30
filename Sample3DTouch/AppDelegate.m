//
//  AppDelegate.m
//  Sample3DTouch
//
//  Created by kyasu on 2016/01/22.
//  Copyright © 2016年 kyasu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // 動的にショートカットアイテムを追加
    UIApplicationShortcutItem *item;
    item = [[UIApplicationShortcutItem alloc] initWithType:@"com.kyasusoft.itako"
                                            localizedTitle:@"イタコ姉さん"
                                         localizedSubtitle:nil
                                                      icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLocation]
                                                  userInfo:nil];
    
    [[UIApplication sharedApplication] setShortcutItems:@[item]];

    return YES;
}

#pragma mark - ショートカットアイテムから起動した時に呼ばれるdelegete

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if ([shortcutItem.type isEqualToString:@"com.kyasusoft.kiritan"]) {
        // きりたんのノーティフィケーションをポストする
        NSNotification* n = [NSNotification notificationWithName:@"goKiritan" object:self];
        [[NSNotificationCenter defaultCenter] postNotification:n];
    } else {
        // イタコ姉さんのノーティフィケーションのポストする
        NSNotification* n = [NSNotification notificationWithName:@"goItako" object:self];
        [[NSNotificationCenter defaultCenter] postNotification:n];
    }
    
    completionHandler(YES);
}

@end

//
//  AppDelegate.m
//  ZTMapSection
//
//  Created by Tong Zhao on 15/11/9.
//  Copyright © 2015年 ZhTg. All rights reserved.
//

#import "AppDelegate.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import "BNCoreServices.h"

@interface AppDelegate ()
@property(nonatomic,strong)BMKMapManager* mgr;

@end


@implementation AppDelegate
-(BMKMapManager *)mgr{
    if (!_mgr) {
        _mgr = [BMKMapManager new];
    }
    return _mgr;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //初始化mgr对象
//    self.mgr = [BMKMapManager new];
    //设置key
    BOOL isSuccess = [self.mgr start:@"p71FkHXY0z507UbIixqeosja" generalDelegate:nil];
    if (isSuccess) {
        NSLog(@"授权成功");
    }
    //初始化导航SDK
    //BK5ip9xv4lfoAZGokPocNbV7
    [BNCoreServices_Instance initServices:@"p71FkHXY0z507UbIixqeosja"];
    [BNCoreServices_Instance startServicesAsyn:nil fail:nil];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  BJCAppDelegate.m
//  Colors
//
//  Created by Bryan Clark on 1/6/14.
//  Copyright (c) 2014 bryanjclark. All rights reserved.
//

#import "BJCAppDelegate.h"
#import "BJCColorsListViewController.h"
#import "UIColor+clrs.h"
@implementation BJCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor clrs_blackColor];
    self.window.tintColor = [UIColor clrs_blackColor];

    BJCColorsListViewController *listVC = [BJCColorsListViewController new];
    UINavigationController *navC = [[UINavigationController alloc] initWithRootViewController:listVC];
    navC.navigationBar.barTintColor = [UIColor clrs_silverColor];
    navC.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor clrs_blackColor]};
    navC.navigationBar.tintColor = [UIColor clrs_navyColor];
    self.window.rootViewController = navC;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

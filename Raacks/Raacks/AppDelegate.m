//
//  AppDelegate.m
//  Raacks
//
//  Created by Er. Ajeet Shakya on 6/11/14.
//  Copyright (c) 2014 Leap Frog Technology. All rights reserved.
//

#import "AppDelegate.h"
#import "SocialConnectController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    SocialConnectController *scc = [[SocialConnectController alloc] initWithNibName:@"SocialConnectController" bundle:nil];
    UINavigationController *RegistrationNavC = [[UINavigationController alloc] initWithRootViewController:scc];
    [RegistrationNavC.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    RegistrationNavC.navigationBar.shadowImage = [UIImage new];
    RegistrationNavC.navigationBar.translucent = YES;
    
    UIImage *img = [UIImage imageNamed:@"arrow_left.png"];
    [[UINavigationBar appearance] setBackIndicatorImage:img];
    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:img];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    NSDictionary *titleAttributes = @{
                                      NSForegroundColorAttributeName:[UIColor whiteColor],
                                      NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:15.0]
                                      };
    [[UINavigationBar appearance] setTitleTextAttributes:titleAttributes];
    self.window.rootViewController = RegistrationNavC;

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

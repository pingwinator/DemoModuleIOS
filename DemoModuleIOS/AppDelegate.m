//
//  AppDelegate.m
//  DemoModuleIOS
//
//  Created by Vasyl Liutikov on 23.09.20.
//

#import "AppDelegate.h"
//#import <Flutter/FlutterEngine.h>
@import Flutter;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions
{
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
    // Runs the default Dart entrypoint with a default Flutter route.
    [self.flutterEngine run];
//    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    return YES;
}


@end

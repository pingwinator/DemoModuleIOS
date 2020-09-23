//
//  AppDelegate.h
//  DemoModuleIOS
//
//  Created by Vasyl Liutikov on 23.09.20.
//

#import <UIKit/UIKit.h>
@import Flutter;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;
@property (nonatomic,strong) FlutterEngine *flutterEngine;
@end


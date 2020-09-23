//
//  ViewController.m
//  DemoModuleIOS
//
//  Created by Vasyl Liutikov on 23.09.20.
//

#import "ViewController.h"
#import "AppDelegate.h"
@import Flutter;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showFilters:(id)sender {
    FlutterEngine *flutterEngine =
    ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
    
    [self.navigationController pushViewController:flutterViewController animated:YES];
//    flutterViewController.modalPresentationStyle = UIModalPresentationPopover;
//    [self presentViewController:flutterViewController animated:YES completion:nil];
    FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"MFFilters" binaryMessenger:flutterViewController.binaryMessenger];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"close"]) {
            [self.navigationController dismissViewControllerAnimated:YES completion:nil];
        } else if ([call.method isEqualToString:@"params"]) {
            NSString *json = call.arguments;
            NSLog(@"json %@", json);
            result(@(2));
        }
    }];
}

@end

//
//  yalu103Tests.m
//  yalu103Tests
//
//  Created by Noah TerBest on 3/6/17.
//  Copyright © 2017 devapple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
- (IBAction)gobuttontapped
{
    NSString *title = @"Error";
    NSString *message = @"Your device is currently not supported";
    NSString *okText = @"Okay";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:
                                title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okText style:
                               UIAlertActionStyleCancel handler:nil];
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)setButton:(id)sender
{
    _localNotifcation = [[UNMutableNotificationContent alloc]init];
    _localNotifcation.title = [NSString localizedUserNotificationStringForKey:@"Title" arguments:nil];
    _localNotifcation.body = [NSString localizedUserNotificationStringForKey:@"body" arguments:nil];
    _localNotifcation.sound = ( [UNNotificationSound defaultSound]);
    
    UNTimeIntervalNotificationTrigger* trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:5 repeats:NO];
    _localNotifcation.badge = @([[UIApplication sharedApplication] applicationIconBadgeNumber]+1);
    
    UNNotificationRequest * request = [UNNotificationRequest requestWithIdentifier:@"time down" content:_localNotifcation trigger:trigger];
    UNUserNotificationCenter * center = [UNUserNotificationCenter currentNotificationCenter];
    [center addNotificationRequest:request withCompletionHandler:^(NSError * _Nullable error) {
        if(!error){
            NSLog(@"good");
        }
    }];
}
// ^^^ proof of concept notification for update app

@end

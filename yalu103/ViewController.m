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


@end

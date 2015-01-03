//
//  ViewController.m
//  MBSegueDemo
//
//  Created by Max Bothe on 01/01/15.
//  Copyright (c) 2015 Max Bothe. All rights reserved.
//

#import "ViewController.h"
#import "MBFadeSegue.h"
#import "MBSimpleSplitOpenSegue.h"
#import "MBSimpleSplitCloseSegue.h"
#import "MBGateOpenInsideSegue.h"

@implementation ViewController

- (IBAction)unwindToFirstViewController:(UIStoryboardSegue *)segue {};

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController
                                      fromViewController:(UIViewController *)fromViewController
                                              identifier:(NSString *)identifier
{
    if ([identifier isEqualToString:@"Fade"]) {
        MBSegue *fade = [[MBFadeSegue alloc] initWithIdentifier:identifier
                                                                   source:fromViewController
                                                              destination:toViewController];
        fade.type = MBSegueTypeDismiss;
        return fade;
    } else if ([identifier isEqualToString:@"SimpleSplitOpen"]) {
        MBSegue *split = [[MBSimpleSplitOpenSegue alloc] initWithIdentifier:identifier
                                                                     source:fromViewController
                                                                destination:toViewController];
        split.type = MBSegueTypeDismiss;
        return split;
    } else if ([identifier isEqualToString:@"SimpleSplitClose"]) {
        MBSegue *split = [[MBSimpleSplitCloseSegue alloc] initWithIdentifier:identifier
                                                                      source:fromViewController
                                                                 destination:toViewController];
        split.type = MBSegueTypeDismiss;
        return split;
    } else if ([identifier isEqualToString:@"GateOpenInside"]) {
        MBSegue *split = [[MBGateOpenInsideSegue alloc] initWithIdentifier:identifier
                                                                    source:fromViewController
                                                               destination:toViewController];
        split.type = MBSegueTypeDismiss;
        return split;
    }

    return [super segueForUnwindingToViewController:toViewController
                                 fromViewController:fromViewController
                                         identifier:identifier];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end

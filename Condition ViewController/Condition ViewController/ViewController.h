//
//  ViewController.h
//  Condition ViewController
//
//  Created by Paul on 6/21/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

@import UIKit;

@interface ViewController : UIViewController

@property (strong, nonatomic) UIViewController *destinationViewController;

- (void)pushViewController:(UIViewController *)destinateViewController
             withCondition:(BOOL)condition
    withTemporayController:(UIViewController *)temporaryController;

@end


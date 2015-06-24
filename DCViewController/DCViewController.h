//
//  ViewController.h
//  Condition ViewController
//
//  Created by Paul on 6/21/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#define kDCBarrierDismissNotification @"barrierViewWillDismiss"

@import UIKit;

@interface DCViewController : UIViewController

@property (assign, nonatomic) BOOL allowSwipe;

- (void)pushViewController:(UIViewController *)destinateViewController
             withCondition:(BOOL)condition
               withBarrier:(UIViewController *)barrierViewController;

@end

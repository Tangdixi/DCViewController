//
//  ViewController.m
//  Condition ViewController
//
//  Created by Paul on 6/21/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "DCViewController.h"
#import "BarrierViewController.h"

@interface DCViewController ()<BarrierViewControllerDelegate>

@property (strong, nonatomic) UIViewController *destinationViewController;

@end

@implementation DCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)destinateViewController
             withCondition:(BOOL)condition
               withBarrier:(BarrierViewController *)barrierViewController {
    
    _destinationViewController = destinateViewController;
    
    if (! condition) {
        
        barrierViewController.delegate = self;
        
        [self presentViewController:barrierViewController
                           animated:YES
                         completion:nil];
        
    }
    
}

#pragma mark - Custom Accessors

- (void)setAllowSwipe:(BOOL)allowSwipe {
    
    _allowSwipe = allowSwipe;

    if (allowSwipe) {
        
        __weak id weakSelf = self;
        self.navigationController.interactivePopGestureRecognizer.delegate = weakSelf;

    }

}

#pragma mark - BarrierViewController Delegate

- (void)barrierViewControllerDidDismiss:(BarrierViewController *)barrierViewController {
    
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 
        [self.navigationController pushViewController:self.destinationViewController
                                             animated:YES];
        
    }];
    
}

@end

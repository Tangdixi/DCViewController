//
//  ViewController.m
//  Condition ViewController
//
//  Created by Paul on 6/21/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "DCViewController.h"

@interface DCViewController ()

@property (strong, nonatomic) UIViewController *destinationViewController;
@property (copy, nonatomic) BarrierDismissBlock barrierDismissBlock;

@end

@implementation DCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(barrierViewControllerWillDismiss)
                                                name:kDCBarrierDismissNotification
                                              object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self
                                                   name:kDCBarrierDismissNotification
                                                 object:nil];
    
}

- (void)pushViewController:(UIViewController *)destinateViewController
             withCondition:(BOOL)condition
               withBarrier:(UIViewController *)barrierViewController {
    
    if (! condition) {
        
        _destinationViewController = destinateViewController;
        
        [self presentViewController:barrierViewController
                           animated:YES
                         completion:nil];
        
    }
    else {
        
        [self.navigationController pushViewController:destinateViewController
                                             animated:YES];
        
    }
    
}

- (void)performBlock:(BarrierDismissBlock)block
       withCondition:(BOOL)condition
         withBarrier:(UIViewController *)barrierViewController {
    
    if (! condition) {
        
        _barrierDismissBlock = block;
        
        [self presentViewController:barrierViewController
                           animated:YES
                         completion:nil];
        
    }
    else {
        
        block();
        
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

- (void)barrierViewControllerWillDismiss {
    
    if (self.destinationViewController) {
        [self.navigationController pushViewController:self.destinationViewController
                                             animated:YES];
        
        _destinationViewController = nil;
    
    }
    
    if (_barrierDismissBlock != nil) {
        
        self.barrierDismissBlock();
        
    }
    
}

@end

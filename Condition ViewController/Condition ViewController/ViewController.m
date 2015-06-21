//
//  ViewController.m
//  Condition ViewController
//
//  Created by Paul on 6/21/15.
//  Copyright (c) 2015 DC. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()<LoginViewControllerDelegate>

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

- (void)setDestinationViewController:(UIViewController *)destinationViewController {
    
    _destinationViewController = destinationViewController;
    
}

- (void)pushViewController:(UIViewController *)destinateViewController
             withCondition:(BOOL)condition
    withTemporayController:(UIViewController *)temporaryController{
    
    _destinationViewController = destinateViewController;
    
    if (! condition) {
        
        LoginViewController *loginViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"loginView"];
        loginViewController.delegate = self;
        
        [self presentViewController:loginViewController
                           animated:YES 
                         completion:nil];
        
    }
    
}

- (void)loginViewControllerDidDismiss:(LoginViewController *)loginViewController {
    
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 
        [self.navigationController pushViewController:self.destinationViewController
                                             animated:YES];
        
    }];
    
}

- (IBAction)push:(id)sender {
    
    [self pushViewController:self.destinationViewController withCondition:NO withTemporayController:nil];
    
}

@end

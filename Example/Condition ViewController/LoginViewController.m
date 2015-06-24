//
//  LoginViewController.m
//  
//
//  Created by Paul on 6/22/15.
//
//

#import "LoginViewController.h"
#import "DCViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ok:(id)sender {
    
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 [[NSNotificationCenter defaultCenter]postNotificationName:kDCBarrierDismissNotification
                                                                                    object:nil];
                             }];
    
}

@end

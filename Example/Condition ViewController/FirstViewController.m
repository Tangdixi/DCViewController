//
//  FirstViewController.m
//  
//
//  Created by Paul on 6/21/15.
//
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "LoginViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)push:(id)sender {

    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    
    LoginViewController *loginViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"loginView"];
    
    [self pushViewController:secondViewController
               withCondition:NO
                 withBarrier:loginViewController];
    
}



@end

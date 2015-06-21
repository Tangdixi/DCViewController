//
//  LoginViewController.h
//  
//
//  Created by Paul on 6/21/15.
//
//

#import <UIKit/UIKit.h>

@class LoginViewController;

@protocol LoginViewControllerDelegate <NSObject>

- (void)loginViewControllerDidDismiss:(LoginViewController *)loginViewController;

@end

@interface LoginViewController : UIViewController

@property (weak, nonatomic) id<LoginViewControllerDelegate> delegate;

@end

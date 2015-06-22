//
//  LoginViewController.h
//  
//
//  Created by Paul on 6/21/15.
//
//

#define kDCBarrierViewControllerWillDismissNotification @"barrierViewWillDismiss"

@import UIKit;

@class BarrierViewController;

@protocol BarrierViewControllerDelegate <NSObject>

- (void)barrierViewControllerDidDismiss:(BarrierViewController *)barrierViewController;

@end

@interface BarrierViewController : UIViewController

@property (weak, nonatomic) id<BarrierViewControllerDelegate> delegate;

@end

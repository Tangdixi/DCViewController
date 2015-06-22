//
//  LoginViewController.m
//  
//
//  Created by Paul on 6/21/15.
//
//

#import "BarrierViewController.h"

@interface BarrierViewController ()

@end

@implementation BarrierViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(barrierViewControllerWillDismiss:)
                                                name:kDCBarrierViewControllerWillDismissNotification
                                              object:nil];
    
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

- (void)barrierViewControllerWillDismiss:(NSNotification *)notification {
    
    if (_delegate && [_delegate respondsToSelector:@selector(barrierViewControllerDidDismiss:)]) {
        [_delegate barrierViewControllerDidDismiss:self];
    }
    
}

@end

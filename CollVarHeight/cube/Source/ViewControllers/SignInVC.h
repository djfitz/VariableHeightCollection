//
//  SignInVC.h
//  cube
//
//  Created by Doug Hill on 7/22/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignInVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@property (weak, nonatomic) IBOutlet UIButton *signInButton;
@property (weak, nonatomic) IBOutlet UIButton *forgotPasswordButton;

@property (weak, nonatomic) IBOutlet UIView *textInputContainerView;
@end

//
//  SignInVC.m
//  cube
//
//  Created by Doug Hill on 7/22/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "SignInVC.h"

@implementation SignInVC

- (void) viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = YES;

    // I'd like borderColor to also be set in IB but it only supports UIColor and this property is a CGColor.
    self.textInputContainerView.layer.borderColor = [UIColor colorWithWhite:0.5f alpha:0.5f].CGColor;

    // These properties are set in Interface Builder "User Defined Runtime Attributes"
    // self.textInputContainerView.layer.cornerRadius = 5;
    // self.textInputContainerView.layer.borderWidth = 1.0f;

//    self.textInputContainerView.clipsToBounds = NO;
//    self.textInputContainerView.layer.masksToBounds = YES;
//    self.textInputContainerView.layer.shadowRadius = 1.0f;
//    self.textInputContainerView.layer.shadowOpacity = 1.0f;
//    self.textInputContainerView.layer.shadowColor = [UIColor colorWithWhite:0.5f alpha:0.5f].CGColor;
//    self.textInputContainerView.layer.shadowOffset = CGSizeMake(1.0f,1.0f);
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = YES;
}

@end

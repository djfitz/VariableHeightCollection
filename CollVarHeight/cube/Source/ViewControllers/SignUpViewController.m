//
//  SignUpViewController.m
//  cube
//
//  Created by Doug Hill on 8/1/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "SignUpViewController.h"

// ===================================
// Consts
// ===================================

const NSString *kShowTabIntefaceSequeID = @"ShowMainTabInterface";

// ===================================
// SignUpViewController
// ===================================
//
@implementation SignUpViewController

- (void) viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = YES;

    // Give the container for all text input fields a rounded rect appearance. This makes the view look pretty snazzy. Also, many other apps do this.

    // * I'd like borderColor to also be set in IB but the IB property editor only supports UIColor and this property is a CGColor.
    self.textInputGroupContainer.layer.borderColor = [UIColor colorWithWhite:0.5f alpha:0.5f].CGColor;

    // * These properties are set in Interface Builder "User Defined Runtime Attributes"
    // self.textInputGroupContainer.layer.cornerRadius = 5;
    // self.textInputGroupContainer.layer.borderWidth = 1.0f;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = YES;
}

- (IBAction)showMainTabInterface:(id)sender
{
    [self performSegueWithIdentifier:(NSString*)kShowTabIntefaceSequeID sender:self];
}

@end

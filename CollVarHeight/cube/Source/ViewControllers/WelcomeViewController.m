//
//  WelcomeViewController.m
//  cube
//
//  Created by Doug Hill on 7/22/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "WelcomeViewController.h"

@implementation WelcomeViewController

- (void) viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = YES;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = YES;
}

@end

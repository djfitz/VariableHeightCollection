//
//  CubeViewController.m
//  cube
//
//  Created by Doug Hill on 8/2/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "CubeViewController.h"

@implementation CubeViewController

- (void) viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = NO;
}

- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBarHidden = NO;
    self.navigationController.toolbarHidden = NO;
}

@end

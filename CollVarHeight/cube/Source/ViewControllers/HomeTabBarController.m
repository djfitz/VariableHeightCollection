//
//  HomeTabBarController.m
//  cube
//
//  Created by Doug Hill on 8/1/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "HomeTabBarController.h"

@implementation HomeTabBarController

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

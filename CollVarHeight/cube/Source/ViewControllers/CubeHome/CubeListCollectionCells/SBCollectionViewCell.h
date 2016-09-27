//
//  SBCollectionViewCell.h
//  cube
//
//  Created by Doug Hill on 8/11/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SBCollectionViewCell : UICollectionViewCell

@property CGFloat   cellWidth;
@property BOOL      isLayoutAttribsUpdated;

@property (weak, nonatomic) IBOutlet UILabel *cubeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cubeNameLabelWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *usernameLabelWidthConstraint;

@end

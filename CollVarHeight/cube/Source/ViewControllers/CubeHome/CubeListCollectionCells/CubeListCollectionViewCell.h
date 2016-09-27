//
//  CubeListCollectionViewCell.h
//  cube
//
//  Created by Doug Hill on 8/3/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CubeListCollectionViewCell : UICollectionViewCell

@property CGFloat   cellWidth;
@property BOOL      isLayoutAttribsUpdated;

@property (weak, nonatomic) IBOutlet UILabel *cubenameLabel;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *cubenameWidthLabelConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *usernameLabelWidthConstraint;

@end

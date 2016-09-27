//
//  SBCollectionViewCell.m
//  cube
//
//  Created by Doug Hill on 8/11/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "SBCollectionViewCell.h"

@implementation SBCollectionViewCell


- (void) awakeFromNib
{
    self.translatesAutoresizingMaskIntoConstraints = NO;

    [self addObserver:self forKeyPath:@"cellWidth" options:NSKeyValueObservingOptionNew context:nil];
    [self updateConstraints];
}

- (void) dealloc
{
    [self removeObserver:self forKeyPath:@"cellWidth"];
}

- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    NSLog(@"%@,\nChange:\n%@", keyPath, change);

    if( [keyPath isEqualToString:@"cellWidth"] )
    {
        CGRect bounds = self.frame;
        bounds.size.width = self.cellWidth;
        self.frame = bounds;

        self.usernameLabelWidthConstraint.constant = self.cellWidth - 16;
        self.cubeNameLabelWidthConstraint.constant = self.cellWidth - 16;

        [self updateConstraints];

        self.isLayoutAttribsUpdated = NO;
    }
}

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    NSLog(@"\n\n*>*>*>**>*> preferredLayoutAttributesFittingAttributes\n%@\n\n", layoutAttributes);

    @synchronized (self)
    {
        if( !self.isLayoutAttribsUpdated )
        {
//            CGFloat newHeight = self.usernameLabel.frame.origin.y + self.usernameLabel.frame.size.height + 5;

            CGRect newFrame = layoutAttributes.frame;
            newFrame.size.width = self.cellWidth;
//            newFrame.size.height = newHeight;
            layoutAttributes.frame = newFrame;

            self.isLayoutAttribsUpdated = YES;

            NSLog(@"\n\n~>~>~>~>~> Modified preferredLayoutAttributesFittingAttributes\n%@\n\n", layoutAttributes);
        }
    }

    UICollectionViewLayoutAttributes *la = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];

    NSLog(@"\n\n@>@>@>@>@> New preferredLayoutAttributesFittingAttributes\n%@\n\n", la);

//    @synchronized (self)
//    {
//        if( !self.isLayoutAttribsUpdated )
//        {
////            CGFloat newHeight = self.usernameLabel.frame.origin.y + self.usernameLabel.frame.size.height + 5;
//
//            CGRect newFrame = la.frame;
//            newFrame.size.width = self.cellWidth;
////            newFrame.size.height = newHeight;
//            la.frame = newFrame;
//
//            self.isLayoutAttribsUpdated = YES;
//
//            NSLog(@"\n\n~>~>~>~>~> Modified preferredLayoutAttributesFittingAttributes\n%@\n\n", la);
//        }
//    }

    return la;
}

//- (void)willTransitionFromLayout:(UICollectionViewLayout *)oldLayout toLayout:(UICollectionViewLayout *)newLayout
//{
//    [super willTransitionFromLayout:oldLayout toLayout:newLayout];
//
//    NSLog(@"\nOld = %@\nNew = %@\n", oldLayout, newLayout);
//}


//- (void)applyLayoutAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
//{
//    NSLog(@"\n\n)))+++++++}}} Ready to apply layout\n%@\nto cell\n%@\n\n", layoutAttributes, self);
//
//    [super applyLayoutAttributes:layoutAttributes];
//}

//- (void) layoutSubviews
//{
//    [super layoutSubviews];
//
//    // Calculate new height based on the newly autolaid-out subviews.
//    CGFloat newHeight = self.usernameLabel.frame.origin.y + self.usernameLabel.frame.size.height;
//
//    CGRect newFrame = self.frame;
//    newFrame.size.height = newHeight;
//
//    self.frame = newFrame;
//
//    [self.usernameLabel updateConstraintsIfNeeded];
//    [self.cubeName updateConstraintsIfNeeded];
//    [self updateConstraintsIfNeeded];
//
////    dispatch_async(dispatch_get_main_queue(),
////    ^{
////        [self layoutIfNeeded];
////    });
//}

@end

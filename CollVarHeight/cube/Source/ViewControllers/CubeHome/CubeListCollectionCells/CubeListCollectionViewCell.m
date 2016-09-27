//
//  CubeListCollectionViewCell.m
//  cube
//
//  Created by Doug Hill on 8/3/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "CubeListCollectionViewCell.h"

@implementation CubeListCollectionViewCell

- (void) awakeFromNib
{
    self.translatesAutoresizingMaskIntoConstraints = YES;

    [self addObserver:self forKeyPath:@"cellWidth" options:NSKeyValueObservingOptionNew context:nil];
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
        CGRect bounds = self.bounds;
        bounds.size.width = self.cellWidth;
        self.bounds = bounds;

        self.cubenameWidthLabelConstraint.constant = self.cellWidth - 16;
        self.usernameLabelWidthConstraint.constant = self.cellWidth - 16;

        [self updateConstraintsIfNeeded];
    }
}

- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    NSLog(@"\n\n*>*>*>**>*> preferredLayoutAttributesFittingAttributes\n%@\n\n", layoutAttributes);

    UICollectionViewLayoutAttributes *la = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];

    NSLog(@"\n\n+}+}+}+}+}+}+> Updated preferredLayoutAttributesFittingAttributes\n%@\n\n", layoutAttributes);

    CGRect newFrame = la.frame;
    newFrame.size.width = self.cellWidth;
    la.frame = newFrame;

    NSLog(@"\n\n~>~>~>~>~> Modified preferredLayoutAttributesFittingAttributes\n%@\n\n", la);

    return la;
}

@end

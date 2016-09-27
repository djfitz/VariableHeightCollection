//
//  CubeListCollectionViewController.m
//  cube
//
//  Created by Doug Hill on 8/1/16.
//  Copyright © 2016 Doug Hill. All rights reserved.
//

#import "CubeListCollectionViewController.h"
#import "CubeListCollectionViewCell.h"
#import "SBCollectionViewCell.h"

// ====================================================
// Constants
// ====================================================

//const NSString *kCubeListCellID = @"CubeListCellID";
const NSString *kCubeListCellID = @"CubeListCollectionCellID";


// ====================================================
// CubeListCollectionViewController
// ====================================================
//
@implementation CubeListCollectionViewController

// * viewDidLoad
- (void) viewDidLoad
{
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = YES;

    [self.collectionView registerNib:[UINib nibWithNibName:@"CubeListCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:(NSString*)kCubeListCellID];
}

// * viewWillAppear
- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.navigationController.navigationBarHidden = YES;
    self.navigationController.toolbarHidden = YES;
}

- (void) traitCollectionDidChange:(UITraitCollection *)previousTraitCollection
{
    NSLog(@"\n\n|-|-|-|-|}}}} traitCollectionDidChange\nPrevious Traits:\n%@\nCurrent Traits:\n%@", previousTraitCollection, self.traitCollection);

    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;

    CGFloat newWidth = self.collectionView.bounds.size.width / 2;
    flowLayout.estimatedItemSize = CGSizeMake(newWidth, 46);
    flowLayout.itemSize = CGSizeZero;

    [self.collectionView.collectionViewLayout invalidateLayout];

    [self.collectionView reloadData];
}

#pragma mark - Collection View

// * numberOfItemsInSection
- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    uint32_t numItems = 100;
    return numItems;
}

// * cellForItemAtIndexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *retVal = nil;

    retVal = [self collectionView:collectionView XIBCellForItemAtIndexPath:indexPath];

    return retVal;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView SBCellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *retVal = [collectionView dequeueReusableCellWithReuseIdentifier:(NSString*)kCubeListCellID forIndexPath:indexPath];

    NSLog(@"<<< cellForItemAtIndexPath: Cell Size = %0.2lf, %0.2lf", retVal.bounds.size.width, retVal.bounds.size.height);

    if( retVal )
    {
        SBCollectionViewCell *cubeCell = (SBCollectionViewCell*)retVal;

        cubeCell.cellWidth = self.collectionView.bounds.size.width / 2;

        if( indexPath.row == 0 )
            cubeCell.cubeNameLabel.text = [NSString stringWithFormat:@"•• %ld, %ld Nm Nm Nm Az Co Ak Mt Mn Ct Oh", (long)indexPath.section, (long)indexPath.row];
        else
            cubeCell.cubeNameLabel.text = [NSString stringWithFormat:@"%ld, %ld Nm Nm Nm Az Co Ak Mt Mn Ct Oh", (long)indexPath.section, (long)indexPath.row];

        cubeCell.usernameLabel.text = @"I couldn't be more excited be more excited be more excited be more excited. I couldn't be more excited be more excited be more excited be more excited.";
    }
    else
        NSLog(@"Couldn't load the collection view cell for the home cube list. App will probably crash now.");

    return retVal;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView XIBCellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *retVal = [collectionView dequeueReusableCellWithReuseIdentifier:(NSString*)kCubeListCellID forIndexPath:indexPath];

    NSLog(@"<<< cellForItemAtIndexPath: Cell Size = %0.2lf, %0.2lf", retVal.bounds.size.width, retVal.bounds.size.height);

    if( retVal )
    {
        CubeListCollectionViewCell *cubeCell = (CubeListCollectionViewCell*)retVal;

        cubeCell.cellWidth = self.collectionView.bounds.size.width / 2;

        if( indexPath.row == 0 )
            cubeCell.cubenameLabel.text = [NSString stringWithFormat:@"•• %ld, %ld Nm Nm Nm Az Co Ak Mt Mn Ct Oh", (long)indexPath.section, (long)indexPath.row];
        else
            cubeCell.cubenameLabel.text = [NSString stringWithFormat:@"%ld, %ld Nm Nm Nm Az Co Ak Mt Mn Ct Oh", (long)indexPath.section, (long)indexPath.row];

        cubeCell.usernameLabel.text = @"I couldn't be more excited be more excited be more excited be more excited. I couldn't be more excited be more excited be more excited be more excited.";
    }
    else
        NSLog(@"Couldn't load the collection view cell for the home cube list. App will probably crash now.");

    return retVal;
}

@end

//
//  PhotoCollectionViewController.m
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "PhotoCollectionViewController.h"
#import "PhotoCollectionViewCell.h"
#import "FlickrPhotoService.h"
//#import "PhotoViewController+Themes.h"

@interface PhotoCollectionViewController ()

@end

@implementation PhotoCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    // Register cell classes
    [self.collectionView registerClass:[PhotoCollectionViewCell class] forCellWithReuseIdentifier:[PhotoCollectionViewCell identifier]];
    
    [self configFetchFlickrPhotoWithSearchTag:@"Sakura" withColorCode:FlickrColorNone];
    //[self configWithTheme:self.theme];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // Find them in PhotoViewController+Themes.h
    
    //    self.photoNumber = 6;
    //    self.searchText = @"Christmas";
    //
    //    [FlickrPhotoService FetchPhotosWithText:self.searchText withPhotoNumber:self.photoNumber withCompletionHandler:^(NSArray *photos) {
    //        self.photos = photos;
    //        [self.collectionView reloadData];
    //    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photoNumber;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[PhotoCollectionViewCell identifier] forIndexPath:indexPath];
    // Configure the cell
    if ([self.photos count] > indexPath.row)
    {
        [cell configPhotoCell:self.photos[indexPath.row]];
    }
    return cell;
}

- (void)configFetchFlickrPhotoWithSearchTag:(NSString *)tag withColorCode:(FlickrColorCodes)color
{
    self.photoNumber = 99;
    self.searchText = @"";
    self.searchTag = tag;
    self.colorCode = color;
    
    [FlickrPhotoService fetchPhotosWithText:self.searchText withTag:self.searchTag withColorCode:self.colorCode withPhotoNumber:self.photoNumber withCompletionHandler:^(NSArray *photos) {
        NSLog(@"Completed Loading PhotosURLs");
        self.photos = photos;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.collectionView reloadData];
        });
    }];
}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
 return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
 return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
 
 }
 */

@end

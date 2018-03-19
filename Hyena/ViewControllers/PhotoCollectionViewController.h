//
//  PhotoCollectionViewController.h
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigUtility.h"

@interface PhotoCollectionViewController : UICollectionViewController

// Config Theme
@property (nonatomic, strong) NSString *theme;

@property (nonatomic, copy) NSArray * photos;
@property (nonatomic, strong) UIImage *themeColorGradient;
@property (nonatomic, strong) NSString * searchText;
@property (nonatomic, strong) NSString * searchTag;
@property (nonatomic, assign) NSInteger photoNumber;
@property (nonatomic, assign) FlickrColorCodes colorCode;

@end

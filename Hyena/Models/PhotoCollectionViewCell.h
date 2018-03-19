//
//  PhotoCollectionViewCell.h
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlickrPhoto;

@interface PhotoCollectionViewCell : UICollectionViewCell

- (void)configPhotoCell:(FlickrPhoto *)photo;
+ (NSString *)identifier;

@end

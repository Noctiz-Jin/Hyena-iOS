//
//  FlickrPhotoService.h
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConfigUtility.h"

@class FlickrPhoto;

@interface FlickrPhotoService : NSObject

+ (void)fetchPhotosWithText:(NSString *)searchText withTag:(NSString *)searchTag withColorCode:(FlickrColorCodes)colorCode withPhotoNumber:(NSInteger)photoNumber withCompletionHandler:(void (^)(NSArray *photos))completionHandler;

+ (void)fetchPhoto:(FlickrPhoto *)photo withCompletionHandler:(void (^)(NSData *photoData))completionHandler;
@end


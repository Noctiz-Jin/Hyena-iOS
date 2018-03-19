//
//  FlickrPhoto.m
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "FlickrPhoto.h"

@implementation FlickrPhoto

- (instancetype)init
{
    NSAssert(NO, @"init should not be called");
    return nil;
}

- (instancetype)initWithFarmId:(NSString *)farmId withServerId:(NSString *)serverId withPhotoId:(NSString *)photoId withSecret:(NSString *)secret
{
    self = [super init];
    if (self)
    {
        self.farmId = farmId;
        self.serverId = serverId;
        self.photoId = photoId;
        self.secret = secret;
    }
    
    return self;
}

@end

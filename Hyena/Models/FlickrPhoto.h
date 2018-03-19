//
//  FlickrPhoto.h
//  Hyena
//
//  Created by Yuning Jin on 3/18/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlickrPhoto : NSObject

@property (nonatomic, strong) NSString *farmId;
@property (nonatomic, strong) NSString *serverId;
@property (nonatomic, strong) NSString *photoId;
@property (nonatomic, strong) NSString *secret;

- (instancetype)initWithFarmId:(NSString *)farmId withServerId:(NSString *)serverId withPhotoId:(NSString *)photoId withSecret:(NSString *)secret;

@end

//
//  TableMessage.m
//  Hyena
//
//  Created by Yuning Jin on 6/20/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "TableMessage.h"

@implementation TableMessage

- (instancetype)init
{
    NSAssert(NO, @"init should not be called");
    return nil;
}

- (instancetype)initWithTitle:(NSString *)title withText:(NSString *)text
{
    self = [super init];
    if (self)
    {
        _title = title;
        _text = text;
    }
    
    return self;
}

@end

//
//  TableMessage.h
//  Hyena
//
//  Created by Yuning Jin on 6/20/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableMessage : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;

- (instancetype)initWithTitle:(NSString *)title withText:(NSString *)text;

@end

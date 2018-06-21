//
//  MessageTableViewCell.h
//  Hyena
//
//  Created by Yuning Jin on 6/20/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableMessage;

@interface MessageTableViewCell : UITableViewCell

- (void)configMessageCell:(TableMessage *)message;
+ (NSString *)identifier;

@end

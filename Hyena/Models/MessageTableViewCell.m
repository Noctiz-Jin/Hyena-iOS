//
//  MessageTableViewCell.m
//  Hyena
//
//  Created by Yuning Jin on 6/20/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "MessageTableViewCell.h"
#import "TableMessage.h"

@interface MessageTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *mainTextLabel;

@end

@implementation MessageTableViewCell

static NSString * const kMessageViewCellIdentifier = @"Cell";

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configMessageCell:(TableMessage *)message
{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
        self.mainTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 375, 100)];
        [self.titleLabel setText:message.title];
        [self.mainTextLabel setText:message.text];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.mainTextLabel];
    });
}

+ (NSString *)identifier
{
    return kMessageViewCellIdentifier;
}

@end

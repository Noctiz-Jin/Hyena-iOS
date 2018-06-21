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

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
{
    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    [self configContentView];
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configMessageCell:(TableMessage *)message
{
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.titleLabel setText:message.title];
        [self.mainTextLabel setText:message.text];
    });
}

- (void)configContentView
{
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    self.mainTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 1, 1)];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.mainTextLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.titleLabel setNumberOfLines:0];
    [self.mainTextLabel setNumberOfLines:0];
    [self.mainTextLabel setLineBreakMode:NSLineBreakByCharWrapping];
    
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.mainTextLabel];
    
    [self configConstraints];
}

- (void)configConstraints
{
    // Edge-to-edge
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeTop multiplier:1.f constant:0.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeft multiplier:1.f constant:0.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeRight multiplier:1.f constant:0.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.mainTextLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.titleLabel attribute:NSLayoutAttributeBottom multiplier:1.f constant:25.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.mainTextLabel attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeLeft multiplier:1.f constant:0.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.mainTextLabel attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeRight multiplier:1.f constant:0.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.mainTextLabel attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeBottom multiplier:1.f constant:0.f]];
    
    // Width / Height
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.titleLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:21.f]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.mainTextLabel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:90.f]];
}

+ (NSString *)identifier
{
    return kMessageViewCellIdentifier;
}

@end

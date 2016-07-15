//
//  SellerCell.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "SellerCell.h"
#import "UIUtils.h"

@interface SellerCell ()
{
    UIImageView *_headerImageView;
    UILabel *_nameLabel;
    UILabel *_starLabel;
    UIImageView *_starImage;
    UIButton *_callButton;
}
@end

@implementation SellerCell

- (void)addContentView {
    
    _headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 50, 50)];
    _headerImageView.layer.cornerRadius = _headerImageView.frame.size.width/2;
    [_headerImageView.layer setMasksToBounds:YES];
    [self addSubview:_headerImageView];
    
    _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_headerImageView.frame)+5, 10, [UIUtils getWindowWidth], 20)];
    _nameLabel.font = [UIFont boldSystemFontOfSize:18];
    [self addSubview:_nameLabel];
    
    _starLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_headerImageView.frame)+5, CGRectGetMaxY(_nameLabel.frame)+5, [UIUtils getWindowWidth], 14)];
    _starLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:_starLabel];
    
    _callButton = [[UIButton alloc] initWithFrame:CGRectMake([UIUtils getWindowWidth]-60, 10, 40, 40)];
    [_callButton setImage:[UIImage imageNamed:@"call"] forState:UIControlStateNormal];
    _callButton.layer.cornerRadius = _callButton.frame.size.width/2;
    [_callButton.layer setMasksToBounds:YES];
    [self addSubview:_callButton];
}

- (void)setContentView:(CellInfo *)cellInfo {
    _headerImageView.image = [UIImage imageNamed:@"header"];
    _nameLabel.text = @"掌上学生宝";
    _starLabel.text = @"信誉：";
}

+ (NSString *)getIdentifier {
    return @"SellerCellIdentifier";
}

+ (CGFloat)getHeight:(CellInfo *)cellInfo {
    return 60;
}

@end

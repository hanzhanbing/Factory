//
//  PayCell.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "PayCell.h"
#import "UIUtils.h"

@interface PayCell ()
{
    UILabel *_newPayLable;
    UILabel *_oldPayLable;
    UIButton *_payButton;
}
@end

@implementation PayCell

- (void)addContentView {
    _newPayLable = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 80, 35)];
    _newPayLable.font = [UIFont boldSystemFontOfSize:35];
    [_newPayLable setTextColor:[UIColor colorWithRed:0.000 green:0.602 blue:0.000 alpha:1.000]];
    [self addSubview:_newPayLable];
    
    _oldPayLable = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_newPayLable.frame)+10, CGRectGetMaxY(_newPayLable.frame)-20, 50, 20)];
    _oldPayLable.font = [UIFont systemFontOfSize:20];
    _oldPayLable.textColor = [UIColor grayColor];
    [self addSubview:_oldPayLable];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_newPayLable.frame)+8, CGRectGetMaxY(_newPayLable.frame)-12, 50, 1)];
    label.backgroundColor = [UIColor grayColor];
    [self addSubview:label];
    
    _payButton = [[UIButton alloc] initWithFrame:CGRectMake([UIUtils getWindowWidth]-90, 12, 80, 36)];
    _payButton.backgroundColor = [UIColor orangeColor];
    _payButton.layer.cornerRadius = 10;
    [_payButton.layer setMasksToBounds:YES];
    [self addSubview:_payButton];
}

- (void)setContentView:(CellInfo *)cellInfo {
    _newPayLable.text = @"$200";
    _oldPayLable.text = @"$300";
    [_payButton setTitle:@"立即购买" forState:UIControlStateNormal];
}

+ (NSString *)getIdentifier {
    return @"PayCellIdentifier";
}

+ (CGFloat)getHeight:(CellInfo *)cellInfo {
    return 60;
}

@end

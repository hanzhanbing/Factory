//
//  ProduceCell.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "ProduceCell.h"
#import "UIUtils.h"

@interface ProduceCell ()
{
    UILabel *_name;
    UILabel *_content;
}
@end

@implementation ProduceCell

- (void)addContentView {
    _name = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, [UIUtils getWindowWidth], 20)];
    _name.font = [UIFont boldSystemFontOfSize:20];
    [self addSubview:_name];
    
    _content = [[UILabel alloc] initWithFrame:CGRectMake(10, CGRectGetMaxY(_name.frame)+5, [UIUtils getWindowWidth]-10*2, 20)];
    _content.numberOfLines = 0;
    _content.font = [UIFont systemFontOfSize:15];
    [self addSubview:_content];
}

- (void)setContentView:(CellInfo *)cellInfo {
    _name.text = @"跑步机";
    _content.text = cellInfo.content;
    CGRect contentFrame = _content.frame;
    contentFrame.size.height = [UIUtils getTextHeight:cellInfo.content font:_content.font forWidth:_content.frame.size.width];
    _content.frame = contentFrame;
}

+ (NSString *)getIdentifier {
    return @"ProduceCellIdentifier";
}

+ (CGFloat)getHeight:(CellInfo *)cellInfo {
    CGFloat height = 0;
    height += 5;
    height +=20;
    height +=5;
    height +=[UIUtils getTextHeight:cellInfo.content font:[UIFont systemFontOfSize:15] forWidth:[UIUtils getWindowWidth]-10*2];
    height +=5;
    return height;
}

@end

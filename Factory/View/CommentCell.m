//
//  CommentCell.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "CommentCell.h"
#import "UIUtils.h"

@interface CommentCell ()
{
    UIImageView *_imageView;
    UILabel *_name;
    UILabel *_content;
}
@end

@implementation CommentCell

- (void)addContentView {
    _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 5, 40, 40)];
    _imageView.layer.cornerRadius = _imageView.frame.size.width/2;
    [_imageView.layer setMasksToBounds:YES];
    _imageView.image = [UIImage imageNamed:@"headImg"];
    [self addSubview:_imageView];
    
    _name = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_imageView.frame)+10, 10, [UIUtils getWindowWidth], 18)];
    _name.font = [UIFont systemFontOfSize:18];
    [self addSubview:_name];
    
    _content = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(_imageView.frame)+10, CGRectGetMaxY(_name.frame)+10, [UIUtils getWindowWidth]-10-40-10-10, 15)];
    _content.numberOfLines = 0;
    _content.font = [UIFont systemFontOfSize:15];
    [self addSubview:_content];
}

- (void)setContentView:(CellInfo *)cellInfo {
    _name.text = @"韩占禀";
    _content.text = cellInfo.content;
    CGRect contentFrame = _content.frame;
    contentFrame.size.height = [UIUtils getTextHeight:cellInfo.content font:_content.font forWidth:_content.frame.size.width];
    _content.frame = contentFrame;
}

+ (NSString *)getIdentifier {
    return @"CommentCellIdentifier";
}

+ (CGFloat)getHeight:(CellInfo *)cellInfo {
    CGFloat height = 0;
    height += 10;
    height +=20;
    height +=10;
    height +=[UIUtils getTextHeight:cellInfo.content font:[UIFont systemFontOfSize:15] forWidth:[UIUtils getWindowWidth]-10-40-10-10];
    height +=10;
    return height;
}

@end

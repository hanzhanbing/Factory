//
//  BaseCell.h
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellInfo.h"

@interface BaseCell : UITableViewCell

- (void)addContentView;
- (void)setContentView:(CellInfo *)cellInfo;

+ (NSString *)getIdentifier;
+ (CGFloat)getHeight:(CellInfo *)cellInfo;

@end

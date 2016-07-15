//
//  CellFactory.h
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseCell.h"
#import "CellInfo.h"

@interface CellFactory : NSObject

+ (BaseCell *)getCell:(CellInfo *)cellInfo withCellStyle:(UITableViewCellStyle)cellStyle withCellIdentifier:(NSString *)reuseIdentifier;

+ (NSString *)getCellIdentifier:(CellInfo *)cellInfo;

+ (CGFloat)getCellHeight:(CellInfo *)cellInfo;

@end

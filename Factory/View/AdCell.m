//
//  AdCell.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "AdCell.h"

@implementation AdCell

- (void)addContentView {
    self.backgroundColor = [UIColor redColor];
}

- (void)setContentView:(CellInfo *)cellInfo {
    
}

+ (NSString *)getIdentifier {
    return @"AdCellIdentifier";
}

+ (CGFloat)getHeight:(CellInfo *)cellInfo {
    return 100;
}

@end

//
//  CellInfo.h
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellInfo : NSObject

@property (nonatomic,assign) int type;
@property (nonatomic,copy) NSString *content;

- (id)initWithDictionary:(NSDictionary *)dictionary;

@end

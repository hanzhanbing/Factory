//
//  CellInfo.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "CellInfo.h"

@implementation CellInfo

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.type = [[dictionary objectForKey:@"type"] intValue];
        self.content = [dictionary objectForKey:@"content"];
    }
    return self;
}

@end

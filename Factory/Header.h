//
//  Header.h
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#ifndef Factory_Header_h
#define Factory_Header_h

//预加载

#define IsIOS7 ([[[[UIDevice currentDevice] systemVersion] substringToIndex:1] intValue]>=7)

typedef enum : NSUInteger {
    PayCellType,
    ProduceCellType,
    SellerCellType,
    CommentCellType,
} CellType;

#endif

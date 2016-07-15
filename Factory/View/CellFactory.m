//
//  CellFactory.m
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import "CellFactory.h"
#import "Header.h"
#import "AdCell.h"
#import "PayCell.h"
#import "ProduceCell.h"
#import "SellerCell.h"
#import "CommentCell.h"

@implementation CellFactory

+ (BaseCell *)getCell:(CellInfo *)cellInfo withCellStyle:(UITableViewCellStyle)cellStyle withCellIdentifier:(NSString *)reuseIdentifier {
    BaseCell *baseCell;
    if (cellInfo.type == PayCellType) {
        baseCell = [[PayCell alloc] initWithStyle:cellStyle reuseIdentifier:reuseIdentifier];
    } else if (cellInfo.type == ProduceCellType) {
        baseCell = [[ProduceCell alloc] initWithStyle:cellStyle reuseIdentifier:reuseIdentifier];
    } else if (cellInfo.type == SellerCellType) {
        baseCell = [[SellerCell alloc] initWithStyle:cellStyle reuseIdentifier:reuseIdentifier];
    } else if (cellInfo.type == CommentCellType) {
        baseCell = [[CommentCell alloc] initWithStyle:cellStyle reuseIdentifier:reuseIdentifier];
    }
    return baseCell;
}

+ (NSString *)getCellIdentifier:(CellInfo *)cellInfo {
    if (cellInfo.type == PayCellType) {
        return [PayCell getIdentifier];
    } else if (cellInfo.type == ProduceCellType) {
        return [ProduceCell getIdentifier];
    } else if (cellInfo.type == SellerCellType) {
        return [SellerCell getIdentifier];
    } else if (cellInfo.type == CommentCellType) {
        return [CommentCell getIdentifier];
    }
    return nil;
}

+ (CGFloat)getCellHeight:(CellInfo *)cellInfo {
    if (cellInfo.type == PayCellType) {
        return [PayCell getHeight:cellInfo];
    } else if (cellInfo.type == ProduceCellType) {
        return [ProduceCell getHeight:cellInfo];
    } else if (cellInfo.type == SellerCellType) {
        return [SellerCell getHeight:cellInfo];
    } else if (cellInfo.type == CommentCellType) {
        return [CommentCell getHeight:cellInfo];
    }
    return 0;
}

@end

//
//  UIUtils.h
//  Factory
//
//  Created by 韩占禀 on 15/5/23.
//  Copyright (c) 2015年 jiehang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIUtils : NSObject

+(CGFloat ) getTextHeight:(NSString *) text font:(UIFont *)font forWidth:(CGFloat) width;

+(CGFloat ) getWindowWidth;

@end

//
//  HYProgressView.h
//  HYPassport
//
//  Created by  huiyuan on 2017/8/14.
//  Copyright © 2017年 张宇超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYProgressView : UIView

-(instancetype)init;

-(void)title1:(NSString *)title1 title2:(NSString *)title2 title3:(NSString *)title3 index:(NSInteger)index;

-(void)titleArr:(NSArray *)titleArr index:(NSInteger)index;

@end

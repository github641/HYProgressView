//
//  HYProView.m
//  HYProgressView
//
//  Created by  huiyuan on 2017/8/14.
//  Copyright © 2017年 张宇超. All rights reserved.
//

#import "HYProView.h"
#import "SDAutoLayout.h"

@implementation HYProView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
    }
    return self;
}

-(void)titleArr:(NSArray *)titleArr index:(NSInteger)index{
    CGFloat smWidth = self.frame.size.width / titleArr.count; //
    for (int i = 0; i < titleArr.count; i++) {
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor redColor];
        [self addSubview:view];
        view.sd_layout
        .topSpaceToView(self, 0)
        .bottomSpaceToView(self, 0)
        .widthIs(smWidth)
        .leftSpaceToView(self, i*smWidth);
        
        UILabel *lb = [UILabel new];
        lb.backgroundColor = i<index?[UIColor blackColor]:[UIColor blueColor];
        [view addSubview:lb];
        lb.sd_layout
        .leftSpaceToView(view, i==0?8:0)
        .rightSpaceToView(view, i==titleArr.count-1?8:0)
        .heightIs(2)
        .centerYEqualToView(view).offset(10);
        
        UIButton *btn = [UIButton new];
        [btn setTitle:[NSString stringWithFormat:@"%d",i+1] forState:UIControlStateNormal];
        [btn setBackgroundColor:i<index?[UIColor blackColor]:[UIColor blueColor]];
        btn.titleLabel.textColor = [UIColor whiteColor];
        btn.layer.cornerRadius = 12.5;
        btn.layer.masksToBounds = YES;
        [view addSubview:btn];
        btn.sd_layout
        .centerXEqualToView(view)
        .centerYEqualToView(view).offset(10)
        .widthIs(25)
        .heightIs(25);
        
        UILabel *titleLb = [UILabel new];
        titleLb.text = titleArr[i];
        titleLb.textAlignment = NSTextAlignmentCenter;
        [view addSubview:titleLb];
        titleLb.sd_layout
        .leftSpaceToView(view, 0)
        .rightSpaceToView(view, 0)
        .bottomSpaceToView(btn, 5)
        .heightIs(21);
    }
}

@end

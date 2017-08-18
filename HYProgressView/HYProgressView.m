//
//  HYProgressView.m
//  HYPassport
//
//  Created by  huiyuan on 2017/8/14.
//  Copyright © 2017年 张宇超. All rights reserved.
//

#import "HYProgressView.h"
#import "SDAutoLayout.h"

@implementation HYProgressView

-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

-(void)title1:(NSString *)title1 title2:(NSString *)title2 title3:(NSString *)title3 index:(NSInteger)index{
    
    CGFloat smWidth = self.frame.size.width * 0.33;
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = HEXCOLOR(@"#EFEFF4");
    [self addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = HEXCOLOR(@"#EFEFF4");
    [self addSubview:view2];
    
    UIView *view3 = [UIView new];
    view3.backgroundColor = HEXCOLOR(@"#EFEFF4");
    [self addSubview:view3];
    
    view1.sd_layout
    .topSpaceToView(self, 0)
    .leftSpaceToView(self, 0)
    .bottomSpaceToView(self, 0)
    .widthIs(smWidth);
    
    view3.sd_layout
    .topSpaceToView(self, 0)
    .bottomSpaceToView(self, 0)
    .rightSpaceToView(self, 0)
    .widthIs(smWidth);
    
    view2.sd_layout
    .topSpaceToView(self, 0)
    .leftSpaceToView(view1, 0)
    .bottomSpaceToView(self, 0)
    .rightSpaceToView(view3, 0);
    
    //第一组设置
    UILabel *colorLb1 = [UILabel new];
//    colorLb1.backgroundColor = index < 1?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF"); //HEXCOLOR(@"#7CA2FF")
    [view1 addSubview:colorLb1];
    colorLb1.sd_layout
    .leftSpaceToView(view1, 15)
    .rightSpaceToView(view1, 0)
    .heightIs(2)
    .centerYEqualToView(view1).offset(10);
    
    UIButton *progressBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [progressBtn1 setTitle:@"1" forState:UIControlStateNormal];
    progressBtn1.titleLabel.font = [UIFont systemFontOfSize:14];
    [progressBtn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [progressBtn1 setBackgroundColor:index < 1?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF")];
    progressBtn1.layer.cornerRadius = 12.5;
    progressBtn1.layer.masksToBounds = YES;
    [view1 addSubview:progressBtn1];
    progressBtn1.sd_layout
    .centerXEqualToView(view1).offset(5)
    .centerYEqualToView(view1).offset(10)
    .widthIs(25)
    .heightIs(25);
    
    UILabel *titleLb1 = [UILabel new];
    titleLb1.text = title1;
    titleLb1.textAlignment = NSTextAlignmentCenter;
    titleLb1.font = [UIFont systemFontOfSize:12];
    [view1 addSubview:titleLb1];
    titleLb1.sd_layout
    .leftSpaceToView(view1, 8)
    .rightSpaceToView(view1, 0)
    .bottomSpaceToView(progressBtn1, 5)
    .heightIs(21);
    
    //第二组设置
    UILabel *colorLb2 = [UILabel new];
//    colorLb2.backgroundColor = index < 2?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF");
    [view2 addSubview:colorLb2];
    colorLb2.sd_layout
    .leftSpaceToView(view2, 0)
    .rightSpaceToView(view2, 0)
    .heightIs(2)
    .centerYEqualToView(view2).offset(10);
    
    UIButton *progressBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [progressBtn2 setTitle:@"2" forState:UIControlStateNormal];
    progressBtn2.titleLabel.font = [UIFont systemFontOfSize:14];
    [progressBtn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [progressBtn2 setBackgroundColor:index < 2?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF")];
    progressBtn2.layer.cornerRadius = 12.5;
    progressBtn2.layer.masksToBounds = YES;
    [view2 addSubview:progressBtn2];
    progressBtn2.sd_layout
    .centerXEqualToView(view2)
    .centerYEqualToView(view2).offset(10)
    .widthIs(25)
    .heightIs(25);
    
    UILabel *titleLb2 = [UILabel new];
    titleLb2.text = title2;
    titleLb2.textAlignment = NSTextAlignmentCenter;
    titleLb2.font = [UIFont systemFontOfSize:12];
    [view2 addSubview:titleLb2];
    titleLb2.sd_layout
    .leftSpaceToView(view2, 0)
    .rightSpaceToView(view2, 8)
    .bottomSpaceToView(progressBtn2, 5)
    .heightIs(21);
    
    //第三组设置
    UILabel *colorLb3 = [UILabel new];
//    colorLb3.backgroundColor = index < 3?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF");
    [view3 addSubview:colorLb3];
    colorLb3.sd_layout
    .leftSpaceToView(view3, 0)
    .rightSpaceToView(view3, 15)
    .heightIs(2)
    .centerYEqualToView(view3).offset(10);
    
    UIButton *progressBtn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [progressBtn3 setTitle:@"3" forState:UIControlStateNormal];
    progressBtn3.titleLabel.font = [UIFont systemFontOfSize:14];
    [progressBtn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [progressBtn3 setBackgroundColor:index < 3?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF")];
    progressBtn3.layer.cornerRadius = 12.5;
    progressBtn3.layer.masksToBounds = YES;
    [view3 addSubview:progressBtn3];
    progressBtn3.sd_layout
    .centerXEqualToView(view3).offset(-5)
    .centerYEqualToView(view3).offset(10)
    .widthIs(25)
    .heightIs(25);
    
    UILabel *titleLb3 = [UILabel new];
    titleLb3.text = title3;
    titleLb3.textAlignment = NSTextAlignmentCenter;
    titleLb3.font = [UIFont systemFontOfSize:12];
    [view3 addSubview:titleLb3];
    titleLb3.sd_layout
    .leftSpaceToView(view3, 0)
    .rightSpaceToView(view3, 8)
    .bottomSpaceToView(progressBtn3, 5)
    .heightIs(21);
    
    if (index == 0) {
        colorLb1.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn1 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
        colorLb2.backgroundColor = HEXCOLOR(@"#CBCACF");
        [progressBtn2 setBackgroundColor:HEXCOLOR(@"#CBCACF")];
        colorLb3.backgroundColor = HEXCOLOR(@"#CBCACF");
        [progressBtn3 setBackgroundColor:HEXCOLOR(@"#CBCACF")];
    }else if (index == 1){
        colorLb1.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn1 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
        colorLb2.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn2 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
        colorLb3.backgroundColor = HEXCOLOR(@"#CBCACF");
        [progressBtn3 setBackgroundColor:HEXCOLOR(@"#CBCACF")];
    }else if (index == 2){
        colorLb1.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn1 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
        colorLb2.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn2 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
        colorLb3.backgroundColor = HEXCOLOR(@"#7CA2FF");
        [progressBtn3 setBackgroundColor:HEXCOLOR(@"#7CA2FF")];
    }
}

-(void)titleArr:(NSArray *)titleArr index:(NSInteger)index{
    CGFloat smWidth = self.frame.size.width / titleArr.count;
    for (int i = 0; i < titleArr.count; i++) {
        UIView *view = [UIView new];
        view.backgroundColor = HEXCOLOR(@"#EFEFF4");
        [self addSubview:view];
        view.sd_layout
        .topSpaceToView(self, 0)
        .bottomSpaceToView(self, 0)
        .widthIs(smWidth)
        .leftSpaceToView(self, i*smWidth);
        
        UILabel *colorLb = [UILabel new];
        colorLb.backgroundColor = i < index?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF");
        [view addSubview:colorLb];
        colorLb.sd_layout
        .leftSpaceToView(view, i==0?15:0)
        .rightSpaceToView(view, i==titleArr.count-1?15:0)
        .heightIs(2)
        .centerYEqualToView(view).offset(10);
        
        UIButton *progressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [progressBtn setTitle:[NSString stringWithFormat:@"%d",i+1] forState:UIControlStateNormal];
        progressBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [progressBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [progressBtn setBackgroundColor:i < index?HEXCOLOR(@"#7CA2FF"):HEXCOLOR(@"#CBCACF")];
        progressBtn.layer.cornerRadius = 12.5;
        progressBtn.layer.masksToBounds = YES;
        [view addSubview:progressBtn];
        progressBtn.sd_layout
        .centerXEqualToView(view)
        .centerYEqualToView(view).offset(10)
        .widthIs(25)
        .heightIs(25);
        
        UILabel *titleLb = [UILabel new];
        titleLb.text = titleArr[i];
        titleLb.textAlignment = NSTextAlignmentCenter;
        titleLb.font = [UIFont systemFontOfSize:12];
        [view addSubview:titleLb];
        titleLb.sd_layout
        .leftSpaceToView(view, 0)
        .rightSpaceToView(view, 0)
        .bottomSpaceToView(progressBtn, 5)
        .heightIs(21);
    }
}

@end

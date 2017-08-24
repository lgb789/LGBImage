//
//  Example2.m
//  LGBImage
//
//  Created by mac_256 on 2017/8/24.
//  Copyright © 2017年 lgb789. All rights reserved.
//

#import "Example2.h"

@interface Example2 ()

@end

@implementation Example2

#pragma mark ------------------------------------------------- 生命周期 -------------------------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    [self setupViews];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
}

#pragma mark ------------------------------------------------- 代理方法 -------------------------------------------------

#pragma mark ------------------------------------------------- 公有方法 -------------------------------------------------

#pragma mark ------------------------------------------------- 事件处理 -------------------------------------------------

#pragma mark ------------------------------------------------- 私有方法 -------------------------------------------------
-(void)setupViews
{
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView *imgView = [UIImageView new];
    imgView.frame = CGRectMake(50, 80, 200, 200);
    [self.view addSubview:imgView];
    
    imgView.layer.borderWidth = 1.0;
    imgView.layer.borderColor = [UIColor redColor].CGColor;
    
    UIImage *img = [UIImage imageNamed:@"xiaoxi.jpg"];
    
    imgView.image = [img lgb_imageWithCornerRadius:100];
    
}
#pragma mark ------------------------------------------------- 成员变量 -------------------------------------------------

@end

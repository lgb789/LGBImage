//
//  LGBViewController.m
//  LGBImage
//
//  Created by lgb789 on 05/12/2016.
//  Copyright (c) 2016 lgb789. All rights reserved.
//

#import "LGBViewController.h"
#import "UIImage+lgb_image.h"

@interface LGBViewController ()

@end

@implementation LGBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scroll = [UIScrollView new];
    scroll.frame = self.view.bounds;
    [self.view addSubview:scroll];
    
    UIImageView *v1 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 10, 100, 100)];
    v1.image = [UIImage lgb_imageWithColor:[UIColor redColor]];
    [scroll addSubview:v1];
    
    
    UIImageView *v2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(v1.frame) + 10, 100, 100)];
    v2.image = [UIImage lgb_imageWithColor:[UIColor redColor] cornerRadius:20];
    [scroll addSubview:v2];
    
    UIImageView *v3 = [[UIImageView alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(v2.frame) + 10, 100, 100)];
    v3.image = [[UIImage imageNamed:@"xiaoxi.jpg"] lgb_imageWithCornerRadius:100];
    [scroll addSubview:v3];
    
    UIImageView *v4 = [[UIImageView alloc] initWithFrame:CGRectMake(100, CGRectGetMaxY(v3.frame) + 10, 100, 100)];
    v4.image = [UIImage lgb_circleImageWithColor:[UIColor redColor] size:CGSizeMake(100, 100)];
    [scroll addSubview:v4];
    
    
    scroll.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetMaxY(v4.frame));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

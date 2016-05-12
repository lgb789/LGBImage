//
//  UIImage+lgb_image.m
//  ImageCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import "UIImage+lgb_image.h"

@implementation UIImage (lgb_image)

-(UIImage *)lgb_imageWithCornerRadius:(CGFloat)radius
{
    CGRect rect = (CGRect){CGPointZero, self.size};
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius] addClip];
    [self drawInRect:rect];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

static CGFloat edgeFromRadius(CGFloat radius)
{
    return radius * 2 + 1;
}

+(UIImage *)lgb_imageWithColor:(UIColor *)color
{
    return [self lgb_imageWithColor:color cornerRadius:0];
}

+(UIImage *)lgb_imageWithColor:(UIColor *)color
                  cornerRadius:(CGFloat)cornerRadius
{
    CGFloat minEdge = edgeFromRadius(cornerRadius);
    CGRect rect = CGRectMake(0, 0, minEdge, minEdge);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    [color setFill];
    [color setStroke];
    
    [path addClip];
    [path fill];
    [path stroke];
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [img resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
}

+(UIImage *)lgb_circleImageWithColor:(UIColor *)color
                                size:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:(CGRect){CGPointZero, size}];
    [color setFill];
    [color setStroke];
    
    [path addClip];
    [path fill];
    [path stroke];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
    
}

@end

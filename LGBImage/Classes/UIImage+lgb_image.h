//
//  UIImage+lgb_image.h
//  ImageCategory
//
//  Created by lgb789 on 16/5/12.
//  Copyright © 2016年 com.lgb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (lgb_image)

-(UIImage *)lgb_imageWithCornerRadius:(CGFloat)radius;

-(UIImage *)lgb_scaleToSize:(CGSize)size;


+(UIImage *)lgb_imageWithColor:(UIColor *)color;

+(UIImage *)lgb_imageWithColor:(UIColor *)color
                          size:(CGSize)size;

+(UIImage *)lgb_imageWithColor:(UIColor *)color
                  cornerRadius:(CGFloat)cornerRadius;

+(UIImage *)lgb_imageWithColor:(UIColor *)color
                  cornerRadius:(CGFloat)cornerRadius
                          size:(CGSize)size;

+(UIImage *)lgb_circleImageWithColor:(UIColor *)color
                                size:(CGSize)size;

@end

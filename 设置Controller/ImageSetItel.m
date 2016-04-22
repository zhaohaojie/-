//
//  ImageSetItel.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/21.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "ImageSetItel.h"

@implementation ImageSetItel
-(id)setItemWithImage:(UIImage *)image andWithCellTitle:(NSString *)title andLeftTitle:(NSString*)leftTitle
{
    ImageSetItel *set=[[ImageSetItel alloc]init];
    set.image=image;
    set.cellTitle=title;
    return set;
}
-(id)setItemWithTitle:(NSString*)title
{
    return [self setItemWithImage:nil andWithCellTitle:title andLeftTitle:nil];
}
@end

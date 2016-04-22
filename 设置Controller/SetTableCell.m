//
//  SetTableCell.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/21.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "SetTableCell.h"
#import "BeseSetItem.h"
#import "ImageSetItel.h"
#import "AccessorySet.h"
#import "SwitchSet.h"
@implementation SetTableCell
+(instancetype)setTableCellWith:(UITableView *)table
{
    static NSString *cellId=@"cellId";
    SetTableCell *cell=[table dequeueReusableCellWithIdentifier:cellId];
    if (!cell)
    {
        cell=[[SetTableCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    return cell;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        
    }
    return  self;
}
-(void)setItem:(BeseSetItem* )item
{
//    if ([item isKindOfClass:[BeseSetItem class]]) {
//        
//        [self setImag:item.image andCellTitl:item.cellTitle];
//    }
    if ([item isKindOfClass:[AccessorySet class]]) {
        
        
        [self setLeftTitlle:item];
    }
    if ([item isKindOfClass:[SwitchSet class]]) {
        [self setSwitch:item];
    }
    
}
-(void)setImag:(UIImage *)image andCellTitl:(NSString*)title
{
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 2, 40, 40)];
    imageView.image=image;
    [self addSubview:imageView];
    UILabel *cellTitleLable=[[UILabel alloc]initWithFrame:CGRectMake(80, 2, 120, 40)];
    cellTitleLable.text=title;
    [self addSubview:cellTitleLable];
}
-(void)setLeftTitlle:(ImageSetItel *)item
{
    if (item.image!=nil)
    {
        UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(20, 2, 40, 40)];
        imageView.image=item.image;
        [self addSubview:imageView];
    }
    if (item.image==nil) {
        UILabel *cellTitleLable=[[UILabel alloc]initWithFrame:CGRectMake(20, 2, 160, 40)];
        cellTitleLable.text=item.cellTitle;
        [self addSubview:cellTitleLable];
    }
    else
    {
        UILabel *cellTitleLable=[[UILabel alloc]initWithFrame:CGRectMake(80, 2, 160, 40)];
        cellTitleLable.text=item.cellTitle;
        [self addSubview:cellTitleLable];
    }
    
    if (item.leftTitle.length!=0)
    {
        UILabel *leftLabel=[[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width-10, 2, 60, 40)];
        leftLabel.text=item.leftTitle;
        [self addSubview:leftLabel];
        
    }
    if ([item isKindOfClass:[SwitchSet class]]) {
        self.accessoryType=UITableViewCellAccessoryNone;
    }
    else
    {
         self.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
        
    }
   
}
-(void)setSwitch:(BeseSetItem*)item
{
    UISwitch *swiocj=[[UISwitch alloc]initWithFrame:self.accessoryView.bounds];
    self.accessoryView=swiocj;
    [self setLeftTitlle:item];
}
@end

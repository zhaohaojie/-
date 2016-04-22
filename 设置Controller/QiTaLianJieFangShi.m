//
//  QiTaLianJieFangShi.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/22.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "QiTaLianJieFangShi.h"
#import "SetIngGroup.h"
#import "AccessorySet.h"
#import "SwitchSet.h"
@implementation QiTaLianJieFangShi
-(void)viewDidLoad
{
    SwitchSet *item1=[[SwitchSet alloc]init];
    item1.cellTitle=@"飞行模式";
    AccessorySet *item2=[[AccessorySet alloc]init];
    item2.cellTitle=@"VPN";
    AccessorySet *item3=[[AccessorySet alloc]init];
    item3.cellTitle=@"网络热点";
    AccessorySet *item4=[[AccessorySet alloc]init];
    item4.cellTitle=@"无线显示";
    SetIngGroup *group=[[SetIngGroup alloc]init];
    group.items=@[item1,item2,item3,item4];
    self.groupArray=@[group];
    
    
   
    
    
}
@end

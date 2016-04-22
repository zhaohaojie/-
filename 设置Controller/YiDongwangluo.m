//
//  YiDongwangluo.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/22.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "YiDongwangluo.h"
#import "SwitchSet.h"
#import "SetIngGroup.h"
#import "AccessorySet.h"
#import "YunYingShang.h"
@implementation YiDongwangluo
-(void)viewDidLoad
{
    SwitchSet *items1=[[SwitchSet alloc]init];
    items1.cellTitle=@"启用数据网络";
    AccessorySet *item2=[[AccessorySet alloc]init];
    item2.cellTitle=@"境外漫游设置";
    SwitchSet *item3=[[SwitchSet alloc]init];
    item3.cellTitle=@"始终接受彩信";
    AccessorySet *item4=[[AccessorySet alloc]init];
    item4.cellTitle=@"接入点名称（APN）";
    SetIngGroup*group=[[SetIngGroup alloc]init];
    AccessorySet *item5=[[AccessorySet alloc]init];
    item5.cellTitle=@"网络类型选择";
    AccessorySet *item6=[[AccessorySet alloc]init];
    item6.cellTitle=@"运营商选择";
    item6.showClass=[YunYingShang class];
    group.items=@[items1,item2,item3,item4,item5,item6];
    self.groupArray=@[group];
    
    

}
@end

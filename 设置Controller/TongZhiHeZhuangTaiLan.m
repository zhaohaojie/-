//
//  TongZhiHeZhuangTaiLan.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/22.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "TongZhiHeZhuangTaiLan.h"
#import "AccessorySet.h"
#import "SwitchSet.h"
#import "SetIngGroup.h"
@implementation TongZhiHeZhuangTaiLan
-(void)viewDidLoad
{
    AccessorySet *item1=[[AccessorySet alloc]init];
    item1.cellTitle=@"通知和管理";
    AccessorySet *item2=[[AccessorySet alloc]init];
    item2.cellTitle=@"开关排序";
    SetIngGroup *group1=[[SetIngGroup alloc]init];
    group1.items=@[item1,item2];
    
    SwitchSet *item21=[[SwitchSet alloc]init];
    item21.cellTitle=@"有通知显示图标";
    SwitchSet *item22=[[SwitchSet alloc]init];
    item22.cellTitle=@"显示实时网速";
    SwitchSet *item23=[[SwitchSet alloc]init];
    item23.cellTitle=@"显示运营商名称";
    AccessorySet *item24=[[AccessorySet alloc]init];
    item24.cellTitle=@"自定义运营商名称";
    item24.leftTitle=@"无";
    SetIngGroup *group2=[[SetIngGroup alloc]init];
    group2.headTitle=@"状态栏";
    group2.items=@[item21,item22,item23,item24];
    
    
    SwitchSet *item31=[[SwitchSet alloc]init];
    item31.cellTitle=@"先是截屏通知";
    SwitchSet *item32=[[SwitchSet alloc]init];
    item32.cellTitle=@"单击开关后自动收起";
    SwitchSet *item33=[[SwitchSet alloc]init];
    item33.cellTitle=@"锁屏时可下拉";
    SetIngGroup *group3=[[SetIngGroup alloc]init];
    group3.headTitle=@"通知栏";
    group3.items=@[item31,item32,item33];
    
    self.groupArray=@[group1,group2,group3];
    
    
    
}
@end

//
//  YunYingShang.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/22.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "YunYingShang.h"
#import "SwitchSet.h"
#import "SetIngGroup.h"
@implementation YunYingShang
-(void)viewDidLoad
{
    SwitchSet *items1=[[SwitchSet alloc]init];
    items1.cellTitle=@"启用数据网络";
       SetIngGroup*group=[[SetIngGroup alloc]init];
    group.items=@[items1];
    self.groupArray=@[group];
}
@end

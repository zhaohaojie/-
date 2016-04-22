//
//  BaseViewController.m
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/21.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "BaseViewController.h"
#import "SetIngGroup.h"
#import "SetTableCell.h"
#import "BeseSetItem.h"
#import "AccessorySet.h"
#import "YiDongwangluo.h"
#import "QiTaLianJieFangShi.h"
#import "TongZhiHeZhuangTaiLan.h"
@interface BaseViewController ()<UITableViewDelegate,UITableViewDataSource>
{
   
}

@end
@implementation BaseViewController
-(NSMutableArray *)groupArray
{
    if (!_groupArray)
    {
        _groupArray=[[NSMutableArray alloc]init];
    }
    return _groupArray;
}
-(void)loadView
{
    [super loadView];
    _tableViews=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableViews.delegate=self;
    _tableViews.dataSource=self;
    [self.view addSubview:_tableViews];
}
-(void)viewDidLoad
{
    
    AccessorySet*item1=[[AccessorySet alloc]init];
    item1.image=[UIImage imageNamed:@"first"];
    item1.cellTitle=@"移动网络";
    item1.showClass=[YiDongwangluo class];
    AccessorySet*item2=[[AccessorySet alloc]init];
    item2.image=[UIImage imageNamed:@"first"];
    item2.cellTitle=@"WLAN";
    item2.leftTitle=@"FBC4";
    AccessorySet*item3=[[AccessorySet alloc]init];
    item3.image=[UIImage imageNamed:@"first"];
    item3.cellTitle=@"蓝牙";
    item3.leftTitle=@"已关闭";
    AccessorySet*item4=[[AccessorySet alloc]init];
    item4.image=[UIImage imageNamed:@"first"];
    item4.cellTitle=@"其他连接方式";
    item4.showClass=[QiTaLianJieFangShi class];
    
    SetIngGroup *group=[[SetIngGroup alloc]init];
    group.headTitle=@"网络和连接";
    group.items=@[item1,item2,item3,item4];
    AccessorySet*item11=[[AccessorySet alloc]init];
    item11.image=[UIImage imageNamed:@"first"];
    item11.cellTitle=@"通知状态栏";
    item11.showClass=[TongZhiHeZhuangTaiLan class];
    AccessorySet*item12=[[AccessorySet alloc]init];
    item12.image=[UIImage imageNamed:@"first"];
    item12.cellTitle=@"壁纸";
    AccessorySet*item13=[[AccessorySet alloc]init];
    item13.image=[UIImage imageNamed:@"first"];
    item13.cellTitle=@"个性主题";
    SetIngGroup *group1=[[SetIngGroup alloc]init];
    group1.items=@[item11,item12,item13];
    self.groupArray=@[group,group1];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.groupArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    SetIngGroup *group=self.groupArray[section];
    return group.items.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SetTableCell *cell=[SetTableCell setTableCellWith:tableView];
    SetIngGroup *group=self.groupArray[indexPath.section];
    cell.item=group.items[indexPath.row];
    return cell;
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSLog(@"%@",self.groupArray);
     SetIngGroup *group=self.groupArray[section];
    return group.headTitle;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    SetIngGroup *group=self.groupArray[indexPath.section];
    BeseSetItem*item=group.items[indexPath.row];
    if ([item isKindOfClass:[AccessorySet class]])
    {
        AccessorySet*accitem=(AccessorySet*)item;
        
        if (accitem.showClass)
        {
            
            UIViewController *controller=[[accitem.showClass alloc]init];
           
            
            [self.navigationController pushViewController:controller animated:YES];
          
            NSLog(@"%@",self.navigationController);
            
        }
    }
}
@end

//
//  SetTableCell.h
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/21.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BeseSetItem;
@interface SetTableCell : UITableViewCell
@property(nonatomic,strong)BeseSetItem* item;
+(instancetype)setTableCellWith:(UITableView *)table;
@end

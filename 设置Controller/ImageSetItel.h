//
//  ImageSetItel.h
//  设置Controller
//
//  Created by 赵浩杰 on 16/4/21.
//  Copyright © 2016年 赵浩杰. All rights reserved.
//

#import "BeseSetItem.h"

@interface ImageSetItel : BeseSetItem
@property (nonatomic, strong)NSString*leftTitle;
-(id)setItemWithImage:(UIImage *)image andWithCellTitle:(NSString *)title andLeftTitle:(NSString*)leftTitle;
-(id)setItemWithTitle:(NSString*)title;

@end

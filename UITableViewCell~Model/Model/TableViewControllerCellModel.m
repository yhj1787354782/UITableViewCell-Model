//
//  TableViewControllerCellModel.m
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import "TableViewControllerCellModel.h"

@implementation TableViewControllerCellModel

+(instancetype)modelWithTitle:(NSString *)title iconImageName:(NSString *)iconImageName destinationControllerClass:(Class)destinationControllerClass
{
    TableViewControllerCellModel *tableViewControllerCellModel=[[TableViewControllerCellModel alloc]init];
    tableViewControllerCellModel.title=title;
    tableViewControllerCellModel.iconImageName=iconImageName;
    tableViewControllerCellModel.destinationControllerClass=destinationControllerClass;
    return tableViewControllerCellModel;
}

@end

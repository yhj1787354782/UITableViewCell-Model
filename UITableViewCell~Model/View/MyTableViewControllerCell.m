//
//  MyTableViewControllerCell.m
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import "MyTableViewControllerCell.h"
#import "TableViewControllerCellModel.h"

@implementation MyTableViewControllerCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.textLabel.textColor=[UIColor darkGrayColor];
        self.textLabel.font=[UIFont systemFontOfSize:15];
    }
    return self;
}

-(void)setModel:(NSObject *)model
{
    [super setModel:model];
    TableViewControllerCellModel *tableViewControllerCellModel=(TableViewControllerCellModel *)model;
    self.textLabel.text=tableViewControllerCellModel.title;
    self.imageView.image=[UIImage imageNamed:tableViewControllerCellModel.iconImageName];
    self.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
}

@end

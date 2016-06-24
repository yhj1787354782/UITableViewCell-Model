//
//  TableViewControllerCellModel.h
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableViewControllerCellModel : NSObject

@property(nonatomic,copy)NSString *title;

@property(nonatomic,copy)NSString *iconImageName;

@property(nonatomic,copy)Class destinationControllerClass;

+(instancetype)modelWithTitle:(NSString *)title iconImageName:(NSString *)iconImageName destinationControllerClass:(Class)destinationControllerClass;

@end

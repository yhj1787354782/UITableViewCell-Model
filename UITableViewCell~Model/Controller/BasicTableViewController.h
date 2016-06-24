//
//  BasicTableViewController.h
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicTableViewController : UITableViewController

@property(nonatomic,strong)NSArray *dataArray;

@property(nonatomic,assign)NSInteger sectionsNumber;

@property(nonatomic,copy)Class cellClass;

@property(nonatomic,copy)Class cellModelClass;

@end

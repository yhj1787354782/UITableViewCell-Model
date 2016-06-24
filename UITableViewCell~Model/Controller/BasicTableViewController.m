//
//  BasicTableViewController.m
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import "BasicTableViewController.h"
#import "BasicTableViewControllerCell.h"

@interface BasicTableViewController ()

@end

@implementation BasicTableViewController

-(instancetype)init
{
    if (self=[super init]) {
        // 默认为一组
        _sectionsNumber=1;
        self.dataArray=[NSArray array];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    self.tableView.showsHorizontalScrollIndicator=NO;
    self.tableView.showsVerticalScrollIndicator=NO;
    self.tableView.tableFooterView=[UIView new];

    // 把分割线重新设置  15个像素置前
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    
}

-(void)setDataArray:(NSArray *)dataArray
{
    _dataArray=dataArray;
    [self.tableView reloadData];
    [self.tableView registerClass:self.cellClass forCellReuseIdentifier:[self.cellClass description]];
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionsNumber;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger number=(self.sectionsNumber==1)?self.dataArray.count:[self.dataArray[section]count];
    return number;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BasicTableViewControllerCell *cell = [tableView dequeueReusableCellWithIdentifier:[self.cellClass description] forIndexPath:indexPath];
//    BasicTableViewControllerCell *cell=[tableView dequeueReusableCellWithIdentifier:[self.cellClass description]];
    if (!cell) {
        cell=[[self.cellClass alloc]init];
    }
    if (self.sectionsNumber==1) {
        cell.model=self.dataArray[indexPath.row];
    }
    else if (self.sectionsNumber>1)
    {
        cell.model=[self.dataArray[indexPath.section]objectAtIndex:indexPath.row];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

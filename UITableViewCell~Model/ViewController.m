//
//  ViewController.m
//  UITableViewCell~Model
//
//  Created by 阳光 on 16/6/19.
//  Copyright © 2016年 com_qibei. All rights reserved.
//

#import "ViewController.h"
#import "MyTableViewControllerCell.h"
#import "TableViewControllerCellModel.h"
#import "FirstTableViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIViewController *vc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"模型数据加载";
    self.sectionsNumber=1;
    self.cellClass=[MyTableViewControllerCell class];

    [self addModel];
}

-(void)addModel
{
    // section 0 的model
    TableViewControllerCellModel *model01 = [TableViewControllerCellModel modelWithTitle:@"余额宝" iconImageName:@"20000032Icon" destinationControllerClass:[FirstTableViewController class]];

    TableViewControllerCellModel  *model02 = [TableViewControllerCellModel  modelWithTitle:@"招财宝" iconImageName:@"20000059Icon" destinationControllerClass:[FirstTableViewController  class]];

   TableViewControllerCellModel  *model03 = [TableViewControllerCellModel  modelWithTitle:@"娱乐宝" iconImageName:@"20000077Icon" destinationControllerClass:[FirstTableViewController  class]];

    // section 1 的model
    TableViewControllerCellModel  *model11 = [TableViewControllerCellModel  modelWithTitle:@"芝麻信用分" iconImageName:@"20000118Icon" destinationControllerClass:[FirstTableViewController  class]];

    TableViewControllerCellModel  *model12 = [TableViewControllerCellModel  modelWithTitle:@"随身贷" iconImageName:@"20000180Icon" destinationControllerClass:[FirstTableViewController  class]];

    TableViewControllerCellModel  *model13 = [TableViewControllerCellModel  modelWithTitle:@"我的保障" iconImageName:@"20000110Icon" destinationControllerClass:[FirstTableViewController class]];

    // section 2 的model
   TableViewControllerCellModel  *model21 = [TableViewControllerCellModel  modelWithTitle:@"爱心捐赠" iconImageName:@"09999978Icon" destinationControllerClass:[FirstTableViewController class]];

//    self.dataArray = @[
//                       @[model01,model02,model03],
//                       //@[model11, model12, model13],
////                       @[model21]
//                       ];
//

        self.dataArray=@[model01,model02,model03];

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewControllerCellModel *model=[self.dataArray[indexPath.section]objectAtIndex:indexPath.row];
//    UIViewController *viewController1=[[model.destinationControllerClass alloc]init];
     _vc=[[model.destinationControllerClass alloc]init];
    _vc.title=model.title;
    [self.navigationController pushViewController:_vc animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return (section==self.dataArray.count-1)?10:0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

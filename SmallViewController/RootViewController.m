//
//  RootViewController.m
//  SmallViewController
//
//  Created by jam on 17/3/20.
//  Copyright © 2017年 jam. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView* table;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Root";
    self.view.backgroundColor=[UIColor whiteColor];
    
//    self.view.frame=self.navigationController.view.frame;
    
    table=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    table.delegate=self;
    table.dataSource=self;
    [self.view addSubview:table];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    table.frame=self.view.bounds;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"c"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"c"];
        cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text=[NSString stringWithFormat:@"Section:%ld",(long)indexPath.section];
    cell.detailTextLabel.text=[NSString stringWithFormat:@"Row:%ld",(long)indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIViewController* vc=[[UIViewController alloc]init];
    vc.title=@"detail";
    vc.view.backgroundColor=[UIColor blueColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end

//
//  ViewController.m
//  SmallViewController
//
//  Created by jam on 17/3/20.
//  Copyright © 2017年 jam. All rights reserved.
//

#import "ViewController.h"
#import "RootViewController.h"
#import "PopOverNavigationController.h"

@interface ViewController ()<UIPopoverPresentationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center=CGPointMake(200, 100);
    [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonClick:(UIButton*)btn
{
    RootViewController* root=[[RootViewController alloc]init];
    PopOverNavigationController* nav=[[PopOverNavigationController alloc]initWithRootViewController:root sourceView:btn];
    
    [self presentViewController:nav animated:YES completion:nil];
}

@end

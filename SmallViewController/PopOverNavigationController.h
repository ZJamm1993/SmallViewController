//
//  PopOverNavigationController.h
//  SmallViewController
//
//  Created by jam on 17/3/20.
//  Copyright © 2017年 jam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopOverNavigationController : UINavigationController

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController sourceView:(UIView*)sourceView;

@end

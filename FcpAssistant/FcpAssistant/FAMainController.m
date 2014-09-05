//
//  FAMainController.m
//  FcpAssistant
//
//  Created by YangMing on 14-9-4.
//  Copyright (c) 2014年 polaris. All rights reserved.
//

#import "FAMainController.h"
#import "FAJingXuanController.h"
#import "FAStrategyController.h"
#import "FATradeController.h"
#import "FAMessageController.h"
#import "FAMoreController.h"

@interface FAMainController ()

@end

@implementation FAMainController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    FAJingXuanController * jingXuanController = [[FAJingXuanController alloc] init];
    jingXuanController.tabBarItem.title = @"精选";
    jingXuanController.tabBarItem.image = [UIImage imageNamed:@"JingXuan"];

    
    FAStrategyController * strategyController = [[FAStrategyController alloc] init];
    strategyController.tabBarItem.title = @"策略";
    strategyController.tabBarItem.image = [UIImage imageNamed:@"Strategy"];
    
    FATradeController * tradeController =[[FATradeController alloc] initWithNibName:@"FATradeController" bundle:nil];
    tradeController.tabBarItem.title= @"交易";
    tradeController.tabBarItem.image = [UIImage imageNamed:@"Trade"];
    tradeController.title = NSLocalizedStringFromTable(@"HUAJIEWeChat", @"MessageDisplayKitString", @"华捷微信");
  
    UINavigationController * navTradeController = [[UINavigationController alloc] initWithRootViewController:tradeController];
    navTradeController.tabBarItem.title = @"交易";
    navTradeController.tabBarItem.image = [UIImage imageNamed:@"Trade"];
    
    FAMessageController * messageController =[[FAMessageController alloc] init];
    messageController.tabBarItem.title = @"消息";
    messageController.tabBarItem.image = [UIImage imageNamed:@"Message"];
    messageController.tabBarItem.badgeValue = @"5";
    
    FAMoreController * moreController = [[FAMoreController alloc] init];
    moreController.tabBarItem.title = @"更多";
    moreController.tabBarItem.image = [UIImage imageNamed:@"More"];
    
    self.viewControllers = [NSArray arrayWithObjects:jingXuanController,strategyController,navTradeController,messageController,moreController,nil];
    //    mainController.tabBar.tintColor = [UIColor purpleColor];
    // setup UI Image
    UIColor *color = [UIColor colorWithRed:0.176 green:0.576 blue:0.980 alpha:1.000];
    [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbarBkg"]];
    //wide 
    [self.tabBar setSelectedImageTintColor:color];

    self.selectedIndex = 2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

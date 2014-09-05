//
//  FAStoreManager.m
//  FcpAssistant
//
//  Created by YangMing on 14-9-5.
//  Copyright (c) 2014年 polaris. All rights reserved.
//

#import "FAStoreManager.h"

@implementation FAStoreManager

+(instancetype) shareStoreManager
{
    static FAStoreManager * storeManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        storeManager = [[FAStoreManager alloc] init];
    });
    
    return storeManager;
}

-(NSMutableArray *) getTradeConfigArray
{
    NSMutableArray * traderConfigArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    NSDictionary * collectDic = @{@"title":@"收藏",@"image":@"tradeItem_Collect"};
    [traderConfigArray addObject:@[collectDic]];
    
    NSDictionary * orderDic = @{@"title":@"订购",@"image":@"tradeItem_Order"};
    [traderConfigArray addObject:@[orderDic]];
    
    NSDictionary * positionDic = @{@"title": @"持仓",@"image":@"tradeItem_Position"};
    [traderConfigArray addObject:@[positionDic]];
    
    NSDictionary * orderBookDic = @{@"title": @"委托",@"image":@"tradeItem_OrderBook"};
    [traderConfigArray addObject:@[orderBookDic]];
    
    NSDictionary * signalDic = @{@"title": @"信号",@"image":@"traderItem_Signal"};
    [traderConfigArray addObject:@[signalDic]];
    
    return traderConfigArray;
}

@end

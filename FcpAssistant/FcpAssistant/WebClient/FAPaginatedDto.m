//
//  FAPaginatedDto.m
//  FcpAssistant2
//
//  Created by admin on 9/9/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "FAPaginatedDto.h"

// 页面传输类
@implementation FAPaginatedDto

@synthesize PageIndex;
@synthesize PageSize;
@synthesize TotalCount;
@synthesize TotalPageCount;
@synthesize HasNextPage;
@synthesize HasPreviousPage;
//@synthesize Items;


- (void)setItems:(FADummieStrategyDetailViewModel **)newItems
{
    if(_items != NULL)
    {
        for(int i = 0; i < 64; i++)
        {
            _items[i] = newItems[i];
        }
    }
}

- (FADummieStrategyDetailViewModel **)Items
{
    return _items;
}


@end

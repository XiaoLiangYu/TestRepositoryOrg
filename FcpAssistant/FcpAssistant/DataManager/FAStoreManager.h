//
//  FAStoreManager.h
//  FcpAssistant
//
//  Created by YangMing on 14-9-5.
//  Copyright (c) 2014年 polaris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FAStoreManager : NSObject

+(instancetype) shareStoreManager;

-(NSMutableArray *) getTradeConfigArray;

@end

//@interface XHStoreManager : NSObject

//+ (instancetype)shareStoreManager;

//- (NSMutableArray *)getDiscoverConfigureArray;
//
//- (NSMutableArray *)getContactConfigureArray;
//
//- (NSMutableArray *)getAlbumConfigureArray;
//
//- (NSMutableArray *)getProfileConfigureArray;
//
//- (NSMutableArray *)getLocationServiceArray;
//
//- (NSMutableArray *)getSettingConfigureArray;

//@end
//
//  main.m
//  FcpAssistant2
//
//  Created by admin on 9/9/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "FAAppDelegate.h"
#import "FAHttpHead.h"
#import "FAHttpUtility.h"
#import "FAJSONSerialization.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?intSingal=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?intArray=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?stringSingal=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?stringArray=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?objectSingal=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?objectArray=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?objectOutter=";
        //        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?objectOutterArray=";
        NSString *urlAsString = @"http://10.10.6.57/api/MyTest?id=1";
        
        NSError *err;
        FAHttpHead *head = [[FAHttpHead alloc] initDefault];
        head.Method = @"POST";
        
//        MyPostData *body = [[MyPostData alloc] init];
//        body.Name = @"apple";
//        NSData *da = [FAHttpUtility sendRequest:urlAsString withHead:head httpBody:body error:err];
//        id tr = [FAJSONSerialization toObject:nil fromData:da];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([FAAppDelegate class]));
    }
}

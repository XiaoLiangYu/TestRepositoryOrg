//
//  FAMyPurchaseDetailOrderViewCell.h
//  FcpAssistant
//
//  Created by YangMing on 14-9-10.
//  Copyright (c) 2014年 polaris. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FAMyPurchaseDetailOrderViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *instrumentCode;
@property (weak, nonatomic) IBOutlet UILabel *orderQty;
@property (weak, nonatomic) IBOutlet UILabel *tradeQty;
@property (weak, nonatomic) IBOutlet UILabel *tradePrice;
@property (weak, nonatomic) IBOutlet UILabel *orderTime;

@end
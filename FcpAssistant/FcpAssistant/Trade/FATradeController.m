//
//  FATradeController.m
//  FcpAssistant
//
//  Created by YangMing on 14-9-4.
//  Copyright (c) 2014年 polaris. All rights reserved.
//

#import "FATradeController.h"
#import "FATradeViewCell.h"
#import "FAStoreManager.h"

@interface FATradeController ()

@end

@implementation FATradeController

- (void)viewDidLoad
{
    [super viewDidLoad];
    static NSString * cellIdentifier = @"tradeItemCell";
    UINib *nib = [UINib nibWithNibName:@"FATradeViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:cellIdentifier];
    self.navigationItem.title = @"交易";
    
    self.dataSource =[[FAStoreManager shareStoreManager] getTradeConfigArray];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"tradeItemCell";
    FATradeViewCell * cell = (FATradeViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell)
    {
        cell = [[FATradeViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.menuLabel.text = @"sdfadfds";
    }

    if(indexPath.row <self.dataSource.count)
    {
        NSDictionary * tradeDic = self.dataSource[indexPath.row];
        cell.logoImage.image = [UIImage imageNamed:[tradeDic valueForKey:@"image"][0]];
        cell.menuLabel.text = [tradeDic valueForKey:@"title"][0];
    }
    NSLog(@"cellForRowAtIndexPath");
    
    
    // Configure the cell...
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
   }


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
    
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
}
*/

@end

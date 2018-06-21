//
//  MainMenuTableViewController.m
//  Hyena
//
//  Created by Yuning Jin on 2/28/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "MainMenuTableViewController.h"
#import "PhotoCollectionViewController.h"
#import "PhotoCollectionFlowLayout.h"

@interface MainMenuTableViewController ()

@property (nonatomic, strong) NSArray<UITableViewCell *> *cells;
@property (nonatomic, strong) UITableViewCell *settingCell;

@end

@implementation MainMenuTableViewController

- (void)loadView
{
    [super loadView];
    UITableViewCell *firstCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    firstCell.textLabel.text = @"Flickr Photo Gallery";
    firstCell.detailTextLabel.text = @"Collection View";
    UITableViewCell *secondCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    secondCell.textLabel.text = @"Message Logs";
    secondCell.detailTextLabel.text = @"Table View";
    self.cells = @[firstCell, secondCell];
    
    self.settingCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    self.settingCell.textLabel.text = @"Settings";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView setScrollEnabled:NO];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source / delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch(section)
    {
        case 0:  return [self.cells count]; break;
        case 1:  return 1; break;
        default: return 0;
    };
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch(indexPath.section)
    {
        case 0:
            return self.cells[indexPath.row];
        case 1:
            switch(indexPath.row)
            {
                case 0: return self.settingCell;
            }
    }
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Functions"; break;
        case 1:
            return @"Settings"; break;
        default: break;
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            switch (indexPath.row) {
                case 0:
                    [self goToPhotoCollection];
                    break;
                    
                default:
                    break;
            }
            break;
            
        default:
            break;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:false];
}

#pragma mark - Segue

- (void) goToPhotoCollection
{
    PhotoCollectionViewController *configViewController = [[PhotoCollectionViewController alloc] initWithCollectionViewLayout:[[PhotoCollectionFlowLayout alloc] init]];
    [self.navigationController pushViewController:configViewController animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

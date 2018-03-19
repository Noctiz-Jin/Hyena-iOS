//
//  MainNavigationViewController.m
//  Hyena
//
//  Created by Yuning Jin on 2/28/18.
//  Copyright © 2018 Noctiz. All rights reserved.
//

#import "MainNavigationViewController.h"
#import "MainMenuTableViewController.h"

@interface MainNavigationViewController ()

@end

@implementation MainNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configNavigationBar];
    [self configToolBar];
    
    // load first view controller
    MainMenuTableViewController *vc = [[MainMenuTableViewController alloc] init];
    [self pushViewController:vc animated:YES];
}

- (void)configToolBar
{
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    [self setToolbarHidden:NO animated:NO];
}

- (void)configNavigationBar
{
    // See view controllers implementation on its stack
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

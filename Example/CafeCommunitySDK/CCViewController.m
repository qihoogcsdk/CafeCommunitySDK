//
//  CCViewController.m
//  CafeCommunitySDK
//
//  Created by xhp281 on 04/02/2021.
//  Copyright (c) 2021 xhp281. All rights reserved.
//

#import "CCViewController.h"
#import <CafeCommunitySDK/CafeCommunityManager.h>

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)openAction {
    [[CafeCommunityManager new] openCafeMainViewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

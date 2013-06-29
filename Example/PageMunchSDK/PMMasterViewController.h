//
//  PMMasterViewController.h
//  PageMunchSDK
//
//  Created by Andrew Yates on 28/06/2013.
//  Copyright (c) 2013 Andrew Yates. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PMDetailViewController;

@interface PMMasterViewController : UITableViewController

@property (strong, nonatomic) PMDetailViewController *detailViewController;

@end

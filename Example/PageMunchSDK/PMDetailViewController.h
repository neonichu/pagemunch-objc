//
//  PMDetailViewController.h
//  PageMunchSDK
//
//  Created by Andrew Yates on 28/06/2013.
//  Copyright (c) 2013 Andrew Yates. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PMDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextView *responseTextView;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;

@end

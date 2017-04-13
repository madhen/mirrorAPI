//
//  MAPIResponseViewController.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/13/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAPIResponseViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelResponseTitle;

@property (strong, nonatomic) IBOutlet UITextView *textViewResponse;

- (IBAction)exitResponseView:(UIButton *)sender;

@end

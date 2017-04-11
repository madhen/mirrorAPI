//
//  MAPIHeaderViewController.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAPIHeaderViewController : UIViewController  <UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *headerNameValueArray;
}

@property (strong, nonatomic) IBOutlet UILabel *labelTitleHeader;

- (IBAction)textHeaderNameEntered:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textHeaderName;

- (IBAction)textHeaderValueEntered:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *textHeaderValue;

- (IBAction)buttonExitHeaderView:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonAddEditRequestHeader;

- (IBAction)buttonAddEditRequestHeader:(UIButton *)sender;

- (IBAction)buttonAdditionalRequestHeader:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonAdditionalRequestHeader;

@property (strong, nonatomic) IBOutlet UITableView *tableViewHeaderNameValue;

@end

//
//  MAPIHomeViewController.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/8/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MAPIHeaderViewController.h"
#import "MAPIPayloadViewController.h"

@interface MAPIHomeViewController : UIViewController <MAPIHeaderViewControllerDelegate,MAPIPayloadViewControllerDelegate,UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *labelTitle;

@property (strong) NSMutableArray *requestHeader;

@property (strong) NSString *requestPayload;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControlMethod;

@property (strong, nonatomic) IBOutlet UITextField *textEntryURL;

- (IBAction)textEntryURLEntered:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonReqHeader;

- (IBAction)buttonReqHeader:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonReqPayload;

- (IBAction)buttonReqPayloadPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonSendReq;

- (IBAction)buttonSendReqPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableHeaderPayload;

@property (strong, nonatomic) IBOutlet UITextView *textViewPayloadData;

@end


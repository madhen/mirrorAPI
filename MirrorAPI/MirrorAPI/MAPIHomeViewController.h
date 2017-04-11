//
//  MAPIHomeViewController.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/8/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAPIHomeViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelTitle;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentControlMethod;

@property (strong, nonatomic) IBOutlet UITextField *textEntryURL;

- (IBAction)textEntryURLEntered:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonReqHeader;

- (IBAction)buttonReqHeaderPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonReqPayload;

- (IBAction)buttonReqPayloadPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UITextView *textViewReqPayload;

    //@property (strong, nonatomic) IBOutlet UITableView *tableViewReqHeadersAdded;

@property (strong, nonatomic) IBOutlet UIButton *buttonSaveReq;

- (IBAction)buttonSaveReqPressed:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *buttonSendReq;

- (IBAction)buttonSendReqPressed:(id)sender;

@end


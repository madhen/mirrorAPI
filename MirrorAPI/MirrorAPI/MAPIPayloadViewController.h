//
//  MAPIPayloadViewController.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/12/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MAPIHomeViewController;
@class MAPIPayloadViewController;

@protocol MAPIPayloadViewControllerDelegate <NSObject>

-(void)payloadSubmit: (MAPIPayloadViewController*) payloadViewController;

@end

@interface MAPIPayloadViewController : UIViewController

@property (strong, nonatomic) NSString *payloadData;

- (IBAction)buttonExitPayloadView:(UIButton *)sender;

- (IBAction)buttonAddPayload:(UIButton *)sender;

- (IBAction)segmentControlPayloadType:(UISegmentedControl *)sender;

@property (strong, nonatomic) IBOutlet UITextView *textViewPayloadData;


@end

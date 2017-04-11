//
//  MAPIViewController.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/8/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIViewController.h"
#import "MAPIURLEntryValidation.h"

@interface MAPIViewController ()

@end

@implementation MAPIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)textEntryURLEntered:(id)sender {
    NSString *urlString = [self.textEntryURL.text.lowercaseString stringByTrimmingCharactersInSet:
                           [NSCharacterSet whitespaceCharacterSet]];
    if ([urlString length]>0){
        [MAPIURLEntryValidation ]
    }
}
- (IBAction)buttonReqHeaderPressed:(id)sender {
}
- (IBAction)buttonReqPayloadPressed:(id)sender {
}
- (IBAction)buttonSaveReqPressed:(id)sender {
}
- (IBAction)buttonSendReqPressed:(id)sender {
}
@end

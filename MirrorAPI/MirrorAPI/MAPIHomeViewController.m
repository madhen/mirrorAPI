//
//  MAPIHomeViewController.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/8/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIHomeViewController.h"
#import "MAPIURLEntryValidation.h"
#import "MAPIHeaderViewController.h"

@interface MAPIHomeViewController ()

@end

@implementation MAPIHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _buttonReqHeader.enabled = NO;
    [_buttonReqHeader setAlpha:0.40];
    
    _buttonReqPayload.enabled = NO;
    [_buttonReqPayload setAlpha:0.40];
    
    _buttonSendReq.enabled = NO;
    [_buttonSendReq setAlpha:0.40];
    
    _buttonSaveReq.enabled = NO;
    [_buttonSaveReq setAlpha:0.40];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)textEntryURLEntered:(id)sender {
    NSString *urlString = [self.textEntryURL.text.lowercaseString stringByTrimmingCharactersInSet:
                           [NSCharacterSet whitespaceCharacterSet]];
    if ([urlString length]>0){
        MAPIURLEntryValidation* validateURL = [[MAPIURLEntryValidation alloc]init];
        NSString *validatedURL = [validateURL validURL:urlString];
        if (validatedURL == nil){
            
            _buttonReqHeader.enabled = NO;
            [_buttonReqHeader setAlpha:0.40];
            
            _buttonReqPayload.enabled = NO;
            [_buttonReqPayload setAlpha:0.40];
            
            _buttonSendReq.enabled = NO;
            [_buttonSendReq setAlpha:0.40];
            
            _buttonSaveReq.enabled = NO;
            [_buttonSaveReq setAlpha:0.40];
            
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Invalid URL"
                                                                                     message:@"Please enter a valid http or https URL!"
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *actionOnAlert = [UIAlertAction actionWithTitle:@"Ok"
                                                                    style:UIAlertActionStyleDefault
                                                                  handler:nil];
            [alertController addAction:actionOnAlert];
            [self presentViewController:alertController animated:YES completion:nil];
        } else {
            _textEntryURL.text = validatedURL;
            
            _buttonReqHeader.enabled = YES;
            [_buttonReqHeader setAlpha:1.00];
            
            _buttonReqPayload.enabled = YES;
            [_buttonReqPayload setAlpha:1.00];
            
            _buttonSendReq.enabled = YES;
            [_buttonSendReq setAlpha:1.00];
            
            _buttonSaveReq.enabled = YES;
            [_buttonSaveReq setAlpha:1.00];
        }
        }
    [self resignFirstResponder];
}
- (IBAction)buttonReqPayloadPressed:(id)sender {
}
- (IBAction)buttonSaveReqPressed:(id)sender {
}
- (IBAction)buttonSendReqPressed:(id)sender {
}
@end

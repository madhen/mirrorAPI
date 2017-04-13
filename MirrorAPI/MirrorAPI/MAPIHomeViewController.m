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
#import "MAPIPayloadViewController.h"

@interface MAPIHomeViewController ()

@end

@implementation MAPIHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    _buttonReqHeader.enabled = NO;
//    [_buttonReqHeader setAlpha:0.40];
//    
//    _buttonReqPayload.enabled = NO;
//    [_buttonReqPayload setAlpha:0.40];
//    
//    _buttonSendReq.enabled = NO;
//    [_buttonSendReq setAlpha:0.40];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (IBAction)textEntryURLEntered:(id)sender {
    NSString *urlString = [self.textEntryURL.text.lowercaseString stringByTrimmingCharactersInSet:
                           [NSCharacterSet whitespaceCharacterSet]];
    if ([urlString length]>0){
        MAPIURLEntryValidation* validateURL = [[MAPIURLEntryValidation alloc]init];
        NSString *validatedURL = [validateURL validURL:urlString];
        if (validatedURL == nil){
            
//            _buttonReqHeader.enabled = NO;
//            [_buttonReqHeader setAlpha:0.40];
//            
//            _buttonReqPayload.enabled = NO;
//            [_buttonReqPayload setAlpha:0.40];
//            
//            _buttonSendReq.enabled = NO;
//            [_buttonSendReq setAlpha:0.40];
            
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
            
//            _buttonReqHeader.enabled = YES;
//            [_buttonReqHeader setAlpha:1.00];
//            
//            _buttonReqPayload.enabled = YES;
//            [_buttonReqPayload setAlpha:1.00];
//            
//            _buttonSendReq.enabled = YES;
//            [_buttonSendReq setAlpha:1.00];
            
        }
        }
    [self resignFirstResponder];
}
- (IBAction)buttonReqPayloadPressed:(id)sender {
    
    UIStoryboard* payloadStoryBoard = [UIStoryboard storyboardWithName:@"MAPIMain" bundle:nil];
    
    MAPIPayloadViewController *payloadView = [payloadStoryBoard instantiateViewControllerWithIdentifier:@"payloadView"];
    payloadView.delegate = self;
    
    NSString *payloadString = [_requestPayload.lowercaseString stringByTrimmingCharactersInSet:
                               [NSCharacterSet whitespaceCharacterSet]];
    if ([payloadString length]>0){
        payloadView.payloadData = [NSMutableString stringWithString:_requestPayload];
    }
    
    
    [self presentViewController:payloadView animated:(YES) completion:nil];
}
- (IBAction)buttonSendReqPressed:(id)sender {
}

//Protocol for passing header array to home view that will be used by headerview
-(void)headerAddEditComplete: (MAPIHeaderViewController*) headerViewController{
    _requestHeader = headerViewController.headerNameValueArray;
    [_tableHeaderPayload reloadData];
}

//Protocol for passing payload data to home view
-(void)payloadSubmit: (MAPIPayloadViewController*) payloadViewController{
    _requestPayload = [NSString stringWithString:payloadViewController.payloadData];
    NSLog(@"%@", _requestPayload);
}

- (IBAction)buttonReqHeader:(UIButton *)sender {
    UIStoryboard* sBoard = [UIStoryboard storyboardWithName:@"MAPIMain" bundle:nil];
    
    MAPIHeaderViewController *headerView = [sBoard instantiateViewControllerWithIdentifier:@"headerView"];
    headerView.delegate = self;
    if (_requestHeader.count>0){
        headerView.headerNameValueArray = _requestHeader;
    }
    [self presentViewController:headerView animated:(YES) completion:nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _requestHeader.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    NSDictionary *headerData = [_requestHeader objectAtIndex:indexPath.row];
    NSArray *keys = [headerData allKeys];
    
    NSString *cellVal = [NSString stringWithFormat:@"%@ : %@",(NSString *)[headerData valueForKey:keys[0]],(NSString *)keys[0]];
    cell.textLabel.text = cellVal;
    
    return cell;
}


@end

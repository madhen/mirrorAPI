//
//  MAPIPayloadViewController.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/12/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIPayloadViewController.h"
#import "MAPIHomeViewController.h"

@interface MAPIPayloadViewController ()

@end

@implementation MAPIPayloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!_payloadData){
        _textViewPayloadData.text = @"";
    } else {
        _textViewPayloadData.text = _payloadData;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonExitPayloadView:(UIButton *)sender {
}

- (IBAction)buttonAddPayload:(UIButton *)sender {
    
    
        //NSString *payloadString = [self.textViewPayloadData.text.lowercaseString stringByTrimmingCharactersInSet:
        //[NSCharacterSet whitespaceCharacterSet]];
        //if ([payloadString length]>0){
        _payloadData = [NSMutableString stringWithString:_textViewPayloadData.text];
        [_delegate payloadSubmit:self];
        //}
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)segmentControlPayloadType:(UISegmentedControl *)sender {
}
@end

//
//  MAPIHeaderViewController.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIHeaderViewController.h"

@interface MAPIHeaderViewController ()

@end

@implementation MAPIHeaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    headerNameValueArray = [[NSMutableArray alloc]init];
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

- (IBAction)textHeaderNameEntered:(id)sender {
}
- (IBAction)textHeaderValueEntered:(id)sender {
}

- (IBAction)buttonExitHeaderView:(UIButton *)sender {
    [self resignFirstResponder];
}

- (IBAction)buttonAddEditRequestHeader:(UIButton *)sender {
    NSString *headerName = _textHeaderName.text;
    NSString *headerValue = _textHeaderValue.text;
    NSDictionary *headerData = [NSDictionary dictionaryWithObjectsAndKeys:headerName,headerValue, nil];
    NSLog(@"Data: %@", headerData);
    [headerNameValueArray addObject:headerData];
    [_tableViewHeaderNameValue reloadData];
    _textHeaderValue.text = @"";
    _textHeaderName.text = @"";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return headerNameValueArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    NSDictionary *headerData = [headerNameValueArray objectAtIndex:indexPath.row];
    NSArray *keys = [headerData allKeys];
    
    NSString *cellVal = [NSString stringWithFormat:@"%@ : %@",(NSString *)keys[0],(NSString *)[headerData valueForKey:keys[0]]];
    cell.textLabel.text = cellVal;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [headerNameValueArray removeObjectAtIndex:indexPath.row];
        [_tableViewHeaderNameValue deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

- (IBAction)buttonAdditionalRequestHeader:(UIButton *)sender {
}
@end

//
//  MAPIURLEntryValidation.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIURLEntryValidation.h"

@implementation MAPIURLEntryValidation

-(NSString*)validURL:(NSString*)urlEntered{
    NSString *urlRegEx = @"((?:http|https)://)?(?:[A-Za-z0-9]{1,25}\\.)?(?:[A-Za-z0-9]{1,25}\\.)?[\\w\\d\\-_]+\\.\\w{2,5}(\\.\\w{2})?(/(?<=/)(?:[\\w\\d\\-./_]+)?)?";
    NSPredicate *urlTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", urlRegEx];
    BOOL validURL = [urlTest evaluateWithObject:urlEntered];
    if (validURL){
        if ([urlEntered hasPrefix:@"http://"] || [urlEntered hasPrefix:@"https://"]){
            return urlEntered;
        } else {
            NSString* prefix;
            prefix = [NSString stringWithFormat:@"%@%@",@"http://",urlEntered];
            return prefix;
        }
    } else {
        return nil;
    }
}
@end

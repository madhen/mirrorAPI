//
//  MAPIRequestModel.m
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import "MAPIRequestModel.h"

@implementation MAPIRequestModel

@synthesize requestDictionary = _requestDictionary;

@synthesize requestURL = _requestURL;

@synthesize requestMethod = _requestMethod;

@synthesize requestPayload = _requestPayload;

@synthesize requestHeaderArray = _requestHeaderArray;

- (void)setRequestURL:(NSURL *)requestURL{
    _requestURL = requestURL;
}

-(void)setRequestDictionary:(NSMutableDictionary *)requestDictionary{
    _requestDictionary = [NSMutableDictionary dictionaryWithDictionary:requestDictionary];
}

- (void) setRequestMethod:(NSString *)requestMethod{
    _requestMethod = requestMethod;
}

-(void)setRequestHeaderArray:(NSMutableArray *)requestHeaderArray{
    _requestHeaderArray = [NSMutableArray arrayWithArray:requestHeaderArray];
}

-(void)setRequestPayload:(NSString *)requestPayload{
    _requestPayload = requestPayload;
}

@end

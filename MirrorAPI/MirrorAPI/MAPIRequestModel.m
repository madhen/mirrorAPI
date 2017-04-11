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

@synthesize requestHeaderDictionary = _requestHeaderDictionary;

- (void)setRequestURL:(NSURL *)requestURL{
    _requestURL = requestURL;
}

- (void) setRequestMethod:(NSString *)requestMethod{
    _requestMethod = requestMethod;
}

-(void)setRequestHeaderDictionary:(NSDictionary *)requestHeaderDictionary{
    _requestHeaderDictionary = [NSDictionary dictionaryWithDictionary:requestHeaderDictionary];
}

@end

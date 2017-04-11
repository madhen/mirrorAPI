//
//  MAPIRequestModel.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAPIRequestModel : NSObject

@property (strong, nonatomic) NSDictionary* requestDictionary;

@property (strong, nonatomic) NSURL* requestURL;

@property (strong, nonatomic) NSString* requestMethod;

@property (strong, nonatomic) NSString* requestPayload;

@property (strong, nonatomic) NSDictionary* requestHeaderDictionary;

@end

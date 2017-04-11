//
//  MAPIRequestManager.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAPIRequestManager : NSObject

@property (strong, nonatomic) NSDictionary* requestDictionary;

@property (strong, nonatomic) NSArray* requestsArray;

@property (strong, nonatomic) NSDictionary* requestHeader;


@end

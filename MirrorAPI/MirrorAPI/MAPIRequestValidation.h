//
//  MAPIRequestValidation.h
//  MirrorAPI
//
//  Created by Madhen Kuppuswamy Venkataraman on 4/11/17.
//  Copyright © 2017 Madhen Kuppuswamy Venkataraman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAPIRequestValidation : NSObject

-(NSDictionary*)validRequest:(NSDictionary*)requestEntered;

@end

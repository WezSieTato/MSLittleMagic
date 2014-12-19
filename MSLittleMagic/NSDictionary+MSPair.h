//
//  NSDictionary+MSPair.h
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 19/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MSPair;

@interface NSDictionary (MSPair)

/**
 *  Array filled with pair, where first is the key
 *  and second is the object under the key
 */
@property (nonatomic, readonly) NSArray* pairArray;


@end

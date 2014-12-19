//
//  NSMutableDictionary+MSPair.h
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 19/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MSPair;

@interface NSMutableDictionary (MSPair)

/**
 *  Add object from pairs second property
 *  for pars firs property key
 *
 *  @param pair
 */
-(void)addObjectFromPair:(MSPair*)pair;

@end

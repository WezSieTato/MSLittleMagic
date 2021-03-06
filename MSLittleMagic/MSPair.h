//
//  MSPair.h
//  MYOrse
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+MSPair.h"
#import "NSMutableDictionary+MSPair.h"

@interface MSPair : NSObject

@property (strong) id first;
@property (strong) id second;

/**
 *  Array with 2 object: first and second
 */
@property (nonatomic, readonly) NSArray* valueArray;

-(instancetype)initWithFirst:(id)first andSecond:(id)second;
+(instancetype)pairWithFirst:(id)first andSecond:(id)second;

/**
 *  Init object with values from array
 *  first = array[0]
 *  second = array[1]
 *
 *  @param array with values
 *
 *  @return Initialized object if array have 2 objects or more
 */
-(instancetype)initWithArray:(NSArray*)array;

/**
 *  Create object with values from array
 *  first = array[0]
 *  second = array[1]
 *
 *  @param array with values
 *
 *  @return Initialized object if array have 2 objects or more
 */
+(instancetype)pairWithArray:(NSArray*)array;

-(BOOL)isEqualToPair:(MSPair*)other;

@end

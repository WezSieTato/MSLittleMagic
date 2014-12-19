//
//  MSPair.h
//  MYOrse
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSPair : NSObject

@property (strong) id first;
@property (strong) id second;

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
+(instancetype)pairWithArray:(NSArray*)array;

-(BOOL)isEqualToPair:(MSPair*)other;

@end

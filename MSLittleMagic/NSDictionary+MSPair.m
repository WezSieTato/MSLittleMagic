//
//  NSDictionary+MSPair.m
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 19/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "NSDictionary+MSPair.h"
#import "MSPair.h"

@implementation NSDictionary (MSPair)

-(NSArray*)pairArray{
    NSMutableArray* array = [NSMutableArray new];
    for (id object in [self allKeys]) {
        MSPair* pair = [MSPair pairWithFirst:object andSecond:self[object]];
        [array addObject:pair];
    }
    
    return [array copy];
}

@end
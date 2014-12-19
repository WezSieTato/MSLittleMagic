//
//  NSMutableDictionary+MSPair.m
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 19/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "NSMutableDictionary+MSPair.h"
#import "MSPair.h"

@implementation NSMutableDictionary (MSPair)

-(void)addObjectFromPair:(MSPair *)pair{
    [self setValue:pair.second forKey:pair.first];
}

@end

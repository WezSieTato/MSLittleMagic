//
//  MSPair.m
//  MYOrse
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "MSPair.h"

@implementation MSPair

-(instancetype)initWithFirst:(id)first andSecond:(id)second{
    self = [super init];
    if(self){
        self.first = first;
        self.second = second;
    }
    
    return self;
}

+(instancetype)pairWithFirst:(id)first andSecond:(id)second{
    return [[self alloc] initWithFirst:first andSecond:second];
}

-(instancetype)initWithArray:(NSArray *)array{
    self = [super init];
    if(self && [array count] >= 2){
        self.first = [array firstObject];
        self.second = [array objectAtIndex:1];
    }
    
    return self;
}

+(instancetype)pairWithArray:(NSArray *)array{
    return [[self alloc] initWithArray:array];
}

@end

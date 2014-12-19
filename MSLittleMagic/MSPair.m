//
//  MSPair.m
//  MYOrse
//
//  Created by Marcin Stepnowski on 25/11/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import "MSPair.h"

@implementation MSPair

#pragma mark - Creation

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


#pragma mark - Properties

-(NSArray*)valueArray{
    return @[self.first, self.second];
}

#pragma mark - Public methods

-(BOOL)isEqualToPair:(MSPair *)other{
    if (other == self) {
        return YES;
    } else if( [other isKindOfClass:[MSPair class]]){
        MSPair* otherPair = (MSPair*)other;
        BOOL firstResult = [self.first isEqual:otherPair.first];
        BOOL secondResult = [self.second isEqual:otherPair.second];
        return firstResult && secondResult;
    }
    
    return NO;
}

#pragma mark - NSObject method

-(NSString*)description{
    return [NSString stringWithFormat:@"First: %@\nSecond: %@", [self.first description], [self.second description]];
}

- (BOOL)isEqual:(id)other
{
    if (other == self) {
        return YES;
//    } else if (![super isEqual:other]) {
//        return NO;
    } else if( [other isKindOfClass:[MSPair class]]){
        return [self isEqualToPair:(MSPair *)other];
    }
    
    return NO;
}

- (NSUInteger)hash
{
    return [self.second hash] - (NSUInteger)self.first + [self.first hash] + (NSUInteger)self.second;
}

@end

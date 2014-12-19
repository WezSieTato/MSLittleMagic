//
//  MSPairTests.m
//  MSLittleMagic
//
//  Created by Marcin Stepnowski on 03/12/14.
//  Copyright (c) 2014 siema. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MSPair.h"

@interface MSPairTests : XCTestCase

@end

@implementation MSPairTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNewWithValues{
    MSPair* pair = [MSPair pairWithFirst:@"first" andSecond:@2];
    
    XCTAssertEqualObjects(pair.first, @"first");
    XCTAssertEqualObjects(pair.second, @2);
}

-(void)testNewWithArray{
    MSPair* pair = [MSPair pairWithArray:@[@"first", @2]];
    XCTAssertEqualObjects(pair.first, @"first");
    XCTAssertEqualObjects(pair.second, @2);
}

-(void)testArrayProperty{
    MSPair* pair = [MSPair new];
    pair.first = @"first";
    pair.second = @2;
    
    NSArray* arr = @[@"first", @2];
    XCTAssertEqualObjects(pair.valueArray, arr);
}

-(void)testDescription{
    MSPair* pair = [MSPair pairWithArray:@[@"first", @2]];

    NSString* descr = @"First: first\nSecond: 2";
    XCTAssertEqualObjects(pair.description, descr);
}

-(void)testEqual{
    MSPair* pair = [MSPair pairWithArray:@[@"first", @2]];
    MSPair* pair1 = [MSPair pairWithArray:@[@"first", @3]];
    
    XCTAssertFalse([pair isEqualToPair:pair1]);
    XCTAssertFalse([pair isEqual:pair1]);
    
    pair1.second = @2;
    XCTAssertTrue([pair isEqualToPair:pair1]);
    XCTAssertTrue([pair isEqual:pair1]);

}

@end

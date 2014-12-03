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

- (void)testNew{
    MSPair* pair = [MSPair pairWithFirst:@"first" andSecond:@2];
    
    XCTAssertEqualObjects(pair.first, @"first");
    XCTAssertEqualObjects(pair.second, @2);
}

@end

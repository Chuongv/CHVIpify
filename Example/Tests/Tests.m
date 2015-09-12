//
//  CHVIpifyTests.m
//  CHVIpifyTests
//
//  Created by Chuong Vu on 09/11/2015.
//  Copyright (c) 2015 Chuong Vu. All rights reserved.
//

@import XCTest;
#import "CHVIPRetriever.h"

@interface Tests : XCTestCase

@property (strong, nonatomic) CHVIPRetriever *retriever;

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    self.retriever = [CHVIPRetriever new];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFetchIP
{
    XCTestExpectation *expectation = [self expectationWithDescription:@"retrieve IP"];

    [self.retriever getIPAddress:^(NSString *ip, NSError *error) {
        NSLog(@"IP: %@", ip);
        [expectation fulfill];
    }];

    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}

@end


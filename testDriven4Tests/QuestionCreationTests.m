//
//  QuestionCreationTests.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StackOverflowManager.h"

@interface QuestionCreationTests : XCTestCase {
@private
    StackOverflowManager *mgr;
}

@end

@implementation QuestionCreationTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    mgr = [[StackOverflowManager alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    mgr = nil;
}

- (void)testNonConformingObjectConnotBeDelegate {
    XCTAssertThrows(mgr.delegate = (id <StackOverflowManagerDelegate>)[NSNull null], @"NSNull should not be used as the delegate as doesn't confirm to the delegate protocol");
}

- (void)testConformingObjectCanBeDelegate {
    id <StackOverflowManager> delegate = [[MockStackOverflowManagerDelegate alloc] init];
    XCTAssertNoThrow(mgr.delegate = delegate, @"Object conforming to the delegate protocol should be used as the delegate");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

//
//  testDriven4Tests.m
//  testDriven4Tests
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Topic.h"

@class Topic;

@interface testDriven4Tests : XCTestCase {
    Topic *topic;
}

@end

@implementation testDriven4Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
//    topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
//    topic = nil;
}

//- (void)testThatTopicExists {
////    Topic *newTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
//    XCTAssertNotNil(topic, @"should be able to create a Topic instance");
//}
//
//- (void)testThatTopicCanBeNamed {
////    Topic *namedTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
//    XCTAssertEqualObjects(topic.name, @"iPhone", @"The Topic Should have the name I gave it");
//}
//
//- (void)testThatTopicHasATag {
////    Topic *taggedTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
//    XCTAssertEqualObjects(topic.tag, @"iPhone", @"The Topic need to have tags");
//}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
//
//- (void)testForAListOfQuestions {
////    XCTAssertTrue([[topic recentQuestions] isKindOfCalss:[NSArray class]], @"Topics should provide a list of recent questions");
//    XCTAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]], @"Topics should provide a list of recent questions");
//}

@end

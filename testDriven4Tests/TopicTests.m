//
//  testDriven4Tests.m
//  testDriven4Tests
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Topic.h"
#import "Question.h"

@class Topic;

@interface TopicTests : XCTestCase {
    Topic *topic;
}

@end

@implementation TopicTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    topic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    topic = nil;
}

- (void)testThatTopicExists {
    //    Topic *newTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
    XCTAssertNotNil(topic, @"should be able to create a Topic instance");
}

- (void)testThatTopicCanBeNamed {
    //    Topic *namedTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
    XCTAssertEqualObjects(topic.name, @"iPhone", @"The Topic Should have the name I gave it");
}

- (void)testThatTopicHasATag {
    //    Topic *taggedTopic = [[Topic alloc] initWithName:@"iPhone" tag:@"iPhone"];
    XCTAssertEqualObjects(topic.tag, @"iPhone", @"The Topic need to have tags");
}

- (void)testForInitiallyEmptyQuestionList {
    XCTAssertEqual([[topic recentQuestions] count], (NSUInteger)0, @"No question added yet, count should be zero");
}

- (void)testAddingAQuestionToTheList {
    Question *question = [[Question alloc] init];
    [topic addQuestion:question];
    XCTAssertEqual([[topic recentQuestions] count], (NSUInteger)1, @"Add a question, and the count of  question should go up");
}

- (void)testQuesionsAreListedChronologically {
    Question *q1 = [[Question alloc] init];
    q1.date = [NSDate date];
    
    NSTimeInterval secondsPerDay = 24 * 60 * 60;
    NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:secondsPerDay];
    Question *q2 = [[Question alloc] init];
    q2.date = tomorrow;
    
    [topic addQuestion:q1];
    [topic addQuestion:q2];
    
    NSArray *questions = [topic recentQuestions];
    Question *listedFirst = [questions objectAtIndex:0];
    Question *listedSecond = [questions objectAtIndex:1];
    
    XCTAssertEqualObjects([listedFirst.date laterDate:listedSecond.date], listedFirst.date, @"The later question should appear first in the list");
}

- (void)testLimitofTwentyQuestions {
    Question *q1 = [[Question alloc] init];
    for (NSInteger i=0; i<25; i++) {
        [topic addQuestion:q1];
    }
    XCTAssertTrue([[topic recentQuestions] count] < 21, @"There should never be more than twenty questions");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testForAListOfQuestions {
    XCTAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]], @"Topics should provide a list of recent questions");
}

@end





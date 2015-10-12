//
//  QuestionTests.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Question.h"
#import "Answer.h"

@interface QuestionTests : XCTestCase {
    Question *question;
    Answer *lowScore;
    Answer *highScore;
}

@end

@implementation QuestionTests

- (void)setUp {
    [super setUp];
    question = [[Question alloc] init];
    question.date = [NSDate date];
    question.title = @"Do iPhones also dream of eletric sheep?";
    question.score = 42;
    
    Answer *accepted = [[Answer alloc] init];
    accepted.score = 1;
    accepted.accepted = YES;
    [question addAnswer:accepted];
    
    lowScore = [[Answer alloc] init];
    lowScore.score = -4;
    [question addAnswer:lowScore];
    
    highScore = [[Answer alloc] init];
    highScore.score = 4;
    [question addAnswer:highScore];
}

- (void)tearDown {
    [super tearDown];
    question = nil;
    lowScore = nil;
    highScore = nil;
}

- (void)testQuestionDateGen {
    NSDate *testDate = [NSDate date];
    XCTAssert(testDate);
}

- (void)testQuestionAddDate {
    NSDate *testDate = [NSDate date];
    question.date = testDate;
    XCTAssert(question.date);
}

- (void)testQuestionHasADate {
    NSDate *testDate = [NSDate date];
    question.date = testDate;
    XCTAssertEqual(question.date, testDate, @"Question needs to provide its date");
}

- (void)testQuestionKeepScore {
    XCTAssertEqual(question.score, 42, @"Questions need a numeric score");
}

- (void)testQuestionHasATitle {
    XCTAssertEqualObjects(question.title, @"Do iPhones also dream of eletric sheep?", @"Question should know its title");
}

- (void)testQuestionCanHaveAnswersAdded {
    Answer *myAnswer = [[Answer alloc] init];
    XCTAssertNoThrow([question addAnswer:myAnswer], @"Must be able to add answer");
}

- (void)testAcceptedAnswerIsFirst {
    XCTAssertTrue([[question.answers objectAtIndex:0] isAccepted], @"Accepted answer comes first");
}

- (void)testHighScoreAnswerBeforLow {
    NSArray *answers = question.answers;
    NSInteger highIndex = [answers indexOfObject:highScore];
    NSInteger lowIndex = [answers indexOfObject:lowScore];
    XCTAssertTrue(highIndex < lowIndex, @"High-scoring answer comes first");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

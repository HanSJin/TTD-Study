//
//  AnswerTests.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Answer.h"
#import "Person.h"

@interface AnswerTests : XCTestCase {
    Answer *answer;
    Answer *otherAnswer;
}

@end

@implementation AnswerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    answer = [[Answer alloc] init];
    answer.text = @"The answer is 42";
    answer.person = [[Person alloc] initWithName:@"Graham Lee" avatarLocation:@"http://www.20s.kr/data/member/thumb/noimage.png"];
    answer.score = 42;
    
    otherAnswer = [[Answer alloc] init];
    otherAnswer.text = @"I have the answer you need";
    otherAnswer.score = 42;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    answer = nil;
}

- (void)testAnswerHasSomeText {
    XCTAssertEqualObjects(answer.text, @"The answer is 42", @"Answers need to contain some text");
}

- (void)testSomeoneProvidedTheAnswer {
    XCTAssertTrue([answer.person isKindOfClass:[Person class]], @"A person gave this Answer");
}

- (void)testAnswerNotAcceptedByDefault {
    XCTAssertFalse(answer.accepted, @"Answer not accpeted by default");
}

- (void)testAnswerCanBeAccepted {
    XCTAssertNoThrow(answer.accepted = YES, @"It is possible to accept an answer");
}

- (void)testAnswerHasAScore {
    XCTAssertTrue(answer.score == 42, @"Answer's score can be retrieved");
}

- (void)testAcceptedComesBeforeUnaccepted {
    otherAnswer.accepted = YES;
    otherAnswer.score = answer.score + 10;
    
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedDescending, @"Accepted answer should come first");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedAscending, @"Accepted answer should come last");
}

- (void)testAnswersWithEqualScoresCompareEqually {
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedSame, @"Both answers of equal rank");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedSame, @"Both answer has the equal rank");
}

- (void)testLowerScoringAnswerComesAfterHigher {
    otherAnswer.score = answer.score + 10;
    XCTAssertEqual([answer compare:otherAnswer], NSOrderedDescending, @"Higher score comes first");
    XCTAssertEqual([otherAnswer compare:answer], NSOrderedAscending, @"Lower score comes last");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

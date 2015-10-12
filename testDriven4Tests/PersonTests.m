//
//  PersonTests.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase {
    Person *person;
}

@end

@implementation PersonTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    person = [[Person alloc] initWithName:@"Graham Lee" avatarLocation:@"http://www.20s.kr/data/member/thumb/noimage.png"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    person = nil;
}

- (void)testThatPersonHasTheRightName {
    XCTAssertEqualObjects(person.name, @"Graham Lee", @"expecting a person to provide its name");
}

- (void)testThatPersonHasAnAvatarURL {
    NSURL *url = person.avatarURL;
    XCTAssertEqualObjects([url absoluteString], @"http://www.20s.kr/data/member/thumb/noimage.png", @"The Person;s avatar should be represented by a URL");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

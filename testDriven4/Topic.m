//
//  Topic.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import "Topic.h"

@implementation Topic {
    NSArray *questions;
}

@synthesize name;
@synthesize tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag {
    if ((self = [super init])) {
        name = [newName copy];
        tag = [newTag copy];
        questions = [NSArray array];
    }
    return self;
}

- (NSArray *)sortedQuestionsLastestFirst:(NSArray *)questionList {
    NSArray *sortedQuestions = [questions sortedArrayUsingComparator:^(id obj1, id obj2) {
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;
        return [q2.date compare:q1.date];
    }];
    if ([sortedQuestions count] < 21) {
        return sortedQuestions;
    } else {
        return [sortedQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
}

- (NSArray *)recentQuestions {
    return [self sortedQuestionsLastestFirst:questions];
}

- (void)addQuestion:(Question *)question {
    NSArray *newQuestions = [questions arrayByAddingObject:question];
    if ([newQuestions count] > 20) {
        newQuestions = [self sortedQuestionsLastestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    questions = newQuestions;
}
@end

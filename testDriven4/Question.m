//
//  Question.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import "Question.h"

@implementation Question {
    NSMutableSet *answerSet;
}
@synthesize date;
@synthesize title;
@synthesize score;

- (id)init {
    if ((self = [super init])) {
        answerSet = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addAnswer:(Answer *)answer {
    [answerSet addObject:answer];
}

- (NSArray *)answers {
    return [[answerSet allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end

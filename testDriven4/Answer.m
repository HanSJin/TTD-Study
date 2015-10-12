//
//  Answer.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import "Answer.h"

@implementation Answer
@synthesize accepted;
@synthesize score;

- (NSComparisonResult)compare:(Answer *)otherAnswer {
    if (accepted && !(otherAnswer.accepted)) {
        return NSOrderedAscending;
    } else if (!accepted && otherAnswer.accepted) {
        return NSOrderedDescending;
    }
    
    if (score > otherAnswer.score) {
        return NSOrderedAscending;
    } else if (score < otherAnswer.score) {
        return NSOrderedDescending;
    } else {
        return NSOrderedSame;
    }
}

- (BOOL)isAccepted {
    return accepted;
}
@end

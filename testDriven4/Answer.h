//
//  Answer.h
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Answer : NSObject
@property (strong, nonatomic) Person *person;
@property (strong, nonatomic) NSString *text;
@property (nonatomic) int score;
@property (getter=isAccepted) BOOL accepted;

- (NSComparisonResult)compare:(Answer *)otherAnswer;
- (BOOL)isAccepted;

@end

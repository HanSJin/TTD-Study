//
//  Question.h
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Answer.h"

@interface Question : NSObject

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *title;
@property (nonatomic) int score;

@property (readonly) NSArray *answers;

- (void)addAnswer:(Answer *)answer;

@end

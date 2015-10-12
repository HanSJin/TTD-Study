//
//  Topic.h
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface Topic : NSObject
@property (readonly) NSString *name;
@property (readonly) NSString *tag;

- (id)initWithName:(NSString *)newName tag:(NSString *)newTag;
- (NSArray *)recentQuestions;
- (void)addQuestion:(Question *)question;

@end

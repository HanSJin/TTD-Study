//
//  Person.m
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name;
@synthesize avatarURL;

- (id)initWithName:(NSString *)aName avatarLocation:(NSString *)location {
    if ((self = [super init])) {
        name = [aName copy];
        avatarURL =[[NSURL alloc] initWithString:location];
    }
    return self;
}

@end

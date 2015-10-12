//
//  Person.h
//  testDriven4
//
//  Created by 한승진 on 2015. 10. 12..
//  Copyright © 2015년 twentyapps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (readonly) NSString *name;
@property (readonly) NSURL *avatarURL;

- (id)initWithName:(NSString *)aName avatarLocation:(NSString *)location;

@end

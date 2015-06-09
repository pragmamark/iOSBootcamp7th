//
//  Person.m
//  iOSBootCamp
//
//  Created by Stefano Zanetti on 06/06/15.
//  Copyright (c) 2015 #pragmamark. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", _firstname, _lastname];
}

@end

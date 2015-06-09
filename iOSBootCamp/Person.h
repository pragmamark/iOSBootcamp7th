//
//  Person.h
//  iOSBootCamp
//
//  Created by Stefano Zanetti on 06/06/15.
//  Copyright (c) 2015 #pragmamark. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy, readwrite) NSString *firstname;
@property (nonatomic, copy, readwrite) NSString *lastname;

- (NSString *)fullName;

@end

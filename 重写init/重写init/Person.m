//
//  Person.m
//  重写init
//
//  Created by 吴桐 on 2025/5/15.
//

#import "Person.h"

@implementation Person

-(id) init {
    if (self = [super init]) {
        self.name = @"四川芬达";
        self.saying = @"他们朝我扔粑粑";
        self.age = 123;
    }
    return self;
}

@end

//
//  Person.m
//  深复制与浅复制
//
//  Created by 吴桐 on 2025/5/11.
//


#import "Person.h"
@interface Person()<NSCopying,NSMutableCopying>

@end

@implementation Person

- (id)copyWithZone:(NSZone *)zone {
    Person *person = [[Person allocWithZone:zone]init];
    person.name = self.name;
    person.age = self.age;
    return person;
}


- (id)mutableCopyWithZone:(NSZone *)zone {
    Person *person = [[Person allocWithZone:zone] init];
    person.name = [self.name mutableCopy]; 
    person.age = self.age;
    return person;
}

@end



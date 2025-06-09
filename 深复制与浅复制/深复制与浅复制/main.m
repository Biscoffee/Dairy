//
//  main.m
//  深复制与浅复制
//
//  Created by 吴桐 on 2025/5/11.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        person.name = @"Jack";
        person.age = 23;
     
        Person *copyPerson = [person copy]; // 深拷贝
        Person *mutableCopyPerson = [person mutableCopy]; // 深拷贝
        NSLog(@"person = %p;copyPerson = %p",person,copyPerson);
        NSLog(@"person = %p;mutableCopyPerson = %p",person,mutableCopyPerson);
   }
    return 0;
}

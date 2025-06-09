//
//  main.m
//  正式协议
//
//  Created by 吴桐 on 2025/5/15.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Printable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        p.name = @"揽佬";
        p.age = 99;
        [p printInfo];
    }
    return 0;
}

//
//  main.m
//  重写init
//
//  Created by 吴桐 on 2025/5/15.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person* singer = [[Person alloc] init];
        NSLog(@"%@",singer.name);
        NSLog(@"%@",singer.saying);
        NSLog(@"%ld",singer.age);
    }
    return 0;
}

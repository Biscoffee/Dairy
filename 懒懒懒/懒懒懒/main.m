//
//  main.m
//  懒懒懒
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton* p1 = [Singleton shareInstance];
        Singleton* p2 = [[Singleton alloc] init];
        NSLog(@"%d",p1 == p2);
    }
    return 0;
}

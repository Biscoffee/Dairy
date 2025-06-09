//
//  main.m
//  单例模式2
//
//  Created by 吴桐 on 2025/5/14.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Singleton *s1 = [Singleton sharedInstance];
        s1.data = @"Hello, BeijingRDFZ!";

        Singleton *s2 = [Singleton sharedInstance];
        NSLog(@"s2.data = %@", s2.data); // 输出 Hello, Singleton!

        NSLog(@"s1 == s2 ? %@", (s1 == s2) ? @"YES" : @"NO"); // YES
    }
    return 0;
}


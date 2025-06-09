//
//  main.m
//   retainCount
//
//  Created by 吴桐 on 2025/5/14.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *firstString = @"你好";
    NSString *secondString = [NSString stringWithFormat:@"hello"];
    NSString *thirdString = [NSString stringWithFormat:@"helloWorld"];
    
    NSString *test1 = [firstString copy];
    NSLog(@"%p", test1);
    NSString *test2 = [firstString mutableCopy];
    NSLog(@"%p", test2);
    NSString *test3 = [secondString copy];
    NSLog(@"%p", test3);
    NSString *test4 = [secondString mutableCopy];
    NSLog(@"%p", test4);
    NSString *test5 = [thirdString copy];
    NSLog(@"%p", test5);
    NSString *test6 = [thirdString mutableCopy];
    NSLog(@"%p", test6);
    return 0;
}


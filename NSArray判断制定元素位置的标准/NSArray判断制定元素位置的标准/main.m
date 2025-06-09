//
//  main.m
//  NSArray判断制定元素位置的标准
//
//  Created by 吴桐 on 2025/5/12.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "FKUser.h"
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = [NSArray arrayWithObjects:[[FKUser alloc] initWithName: @"sun" pass: @"123"],[[FKUser alloc] initWithName: @"bai" pass: @"345"],[[FKUser alloc] initWithName: @"zhu" pass: @"654"],[[FKUser alloc] initWithName: @"tang" pass: @"178"],[[FKUser alloc] initWithName: @"niu" pass: @"155"], nil];
        FKUser *newUser = [[FKUser alloc] initWithName: @"zhu" pass: @"654"];
        NSUInteger pos = [array indexOfObject: newUser];
        NSLog(@"newUser的位置为：%ld",pos);
    }
    return 0;
}

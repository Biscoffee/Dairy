//
//  main.m
//  copyItems
//
//  Created by 吴桐 on 2025/5/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* str1;
        FKUser* p1 = [[FKUser alloc] initWithName:@"krystal" pass:@"12"];
        FKUser* p2 = [p1 copy];
        NSArray* ary = [NSArray arrayWithObjects:p1, p2, nil];
        NSArray* ary1 = [[NSArray alloc] initWithArray:ary copyItems:YES];
        NSLog(@"%p, %p", ary, ary1);
        NSLog(@"%p, %p", ary1[0], ary[0]);
          FKUser* p3 = ary1[0];
        FKUser* p4 = ary[0];
        NSLog(@"%p, %p", p3.name, p4.name);
    }
    return 0;
}

//
//  main.m
//  多态测试
//
//  Created by 吴桐 on 2025/5/15.
//

#import <Foundation/Foundation.h>
#import "FKBaba.h"
#import "FKSon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKSon* a = [[FKBaba alloc] init];
        [a baba];
        [a test];
        id b = a;
        [b son];
      //  [b test];
        
        NSObject* aa = @"揽佬";
        NSString* aStr = (NSString*) aa;    //没有强制转换是不可以的
        NSLog(@"%@", a);
         

    }
    return 0;
}

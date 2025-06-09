//
//  main.m
//  NSSet判断集合元素重复的标准
//
//  Created by 吴桐 on 2025/5/13.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

NSString* NSCollectionToString(id array) {
    NSMutableString *result = [NSMutableString stringWithString:@"["];
    for (id obj in array) {
        [result appendString:[obj description]];
        [result appendString:@","];
    }
    NSInteger len = [result length];
    [result deleteCharactersInRange:NSMakeRange(len - 1, 1)];
    [result appendString:@"]"];
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet* set = [NSSet setWithObjects: [[FKUser alloc] initWithName:@"messi" pass: @"30"],[[FKUser alloc] initWithName:@"Ronaldo" pass:@"7"],[[FKUser alloc] initWithName: @"mbappe" pass:@"9"],[[FKUser alloc] initWithName:@"Ronaldo" pass:@"7"],[[FKUser alloc] initWithName:@"weishihao" pass:@"7"],nil];
        
        NSLog(@"set集合元素的个数：%ld",[set count]);
        NSLog(@"%@",NSCollectionToString(set));
        return 0;
    }
}

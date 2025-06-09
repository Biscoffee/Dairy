//
//  main.m
//  NSArray
//
//  Created by 吴桐 on 2025/5/11.
//

//FKPerson.h
 
 
#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
@interface FKPerson : NSObject
 
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
 
- (void)test1;
 
@end
 
NS_ASSUME_NONNULL_END
 
 
//FKPerson.m
 
#import "FKPerson.h"
 
@implementation FKPerson
 
- (void)test1 {
    NSLog(@"test1");
}
 
@end
 
 
//FKPerson+Test2.h
 
#import "FKPerson.h"
 
NS_ASSUME_NONNULL_BEGIN
 
@interface FKPerson (Test2)
 
- (void)dda;
 
@end
 
NS_ASSUME_NONNULL_END
 
 
//FKPerson+Test2.m
 
#import "FKPerson+Test2.h"
 
@implementation FKPerson (Test2)
 
- (void)dda {
    NSLog(@"test2");
}
 
@end
 
 
//NSNumber+FK
 
#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
@interface NSNumber (FK)
 
- (NSNumber *)add:(double)num2;
- (NSNumber *)subtract:(double)num2;
- (NSNumber *)multiply:(double)num2;
- (NSNumber *)divide:(double)num2;
 
@end
 
NS_ASSUME_NONNULL_END
 
 
//NSNumber+FK.m
 
 
#import "NSNumber+FK.h"
 
@implementation NSNumber (FK)
 
- (NSNumber *)add:(double)num2 {
    return @(self.doubleValue + num2);
}
 
- (NSNumber *)subtract:(double)num2 {
    return @(self.doubleValue - num2);
}
 
- (NSNumber *)multiply:(double)num2 {
    return @(self.doubleValue * num2);
}
 
- (NSNumber *)divide:(double)num2 {
    return @(self.doubleValue / num2);
}
 
@end
 
 
//main
 
 
#import <Foundation/Foundation.h>
#import "FKPerson.h"
#import "FKPerson+Test2.h"
#import "NSNumber+FK.h"
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 测试 FKPerson 类和分类
        FKPerson *person = [[FKPerson alloc] init];
        person.name = @"Tom";
        person.age = 18;
        
        [person test1];  // 输出 test1
        [person dda];    // 输出 test2
        
        // 测试 NSNumber 分类
        NSNumber *num1 = @10;
        NSLog(@"Add: %@", [[num1 add:5] stringValue]);        // 15
        NSLog(@"Sub: %@", [[num1 subtract:3] stringValue]);   // 7
        NSLog(@"Mul: %@", [[num1 multiply:2] stringValue]);   // 20
        NSLog(@"Div: %@", [[num1 divide:2] stringValue]);     // 5
    }
    return 0;
}

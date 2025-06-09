//
//  Singleton.m
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/17.
//


#import "Singleton.h"
static id _instance = nil;
@implementation Singleton : NSObject 
+ (instancetype) sharedSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [sharedSingleton sharedSingleton];
}
- (id)copyWithZone:(NSZone *)zone {
    return [sharedSingleton sharedSingleton];
}
-(id)mutableCopyWithZone:(NSZone *)zone {
    return [sharedSingleton sharedSingleton];
}
@end


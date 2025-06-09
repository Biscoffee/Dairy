//
//  Singleton.m
//  单例模式2
//
//  Created by 吴桐 on 2025/5/14.
//

#import "Singleton.h"

@implementation Singleton

static Singleton* instance = nil;

//静态实例对象
+(instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

//重写allocWithZone，防止再次创建新实例
+(id) allocWithZone:(NSZone *)zone {
    return self;
}

//实现copy协议，返回同一个实例
-(id)copyWithZone:(NSZone *)zone {
    return self;
}

//实现mutableCopy协议，返回同一个实例
-(id) mutableCopyWithZone:(NSZone *)zone {
    return self;
}

@end

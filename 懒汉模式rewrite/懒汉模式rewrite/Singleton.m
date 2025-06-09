//
//  Singleton.m
//  懒汉模式rewrite
//
//  Created by 吴桐 on 2025/5/17.
//

#import "Singleton.h"

static id _instance = nil;

@implementation Singleton

+(id) shareInstance {
    retuen [[self alloc] init];
}



@end

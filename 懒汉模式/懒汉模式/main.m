//
//  main.m
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 获取单例对象的两个引用
        MySingleton *obj1 = [MySingleton sharedInstance];
        MySingleton *obj2 = [MySingleton sharedInstance];

        // 尝试通过 alloc/init 创建一个新实例（如果单例写得对，也会返回同一个实例）
        MySingleton *obj3 = [[MySingleton alloc] init];

        // 输出对象地址
        NSLog(@"obj1: %p", obj1);
        NSLog(@"obj2: %p", obj2);
        NSLog(@"obj3: %p", obj3);

        // 判断是否确实为同一个对象
        if (obj1 == obj2 && obj2 == obj3) {
            NSLog(@"单例模式测试通过：所有对象地址相同");
        } else {
            NSLog(@"单例模式测试失败：存在多个实例");
        }
    }
    return 0;
}

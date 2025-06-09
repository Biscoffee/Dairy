//
//  main.m
//  NSMutableSet
//
//  Created by 吴桐 on 2025/5/13.
//

#import <Foundation/Foundation.h>
 
//定义一个函数，可以把NSSet集合转化为字符串
//方便我们调试观察结果
NSString *NSCollectionToString(id collection) {
    NSMutableString *result = [NSMutableString stringWithString: @"["];
    for (id obj in collection) {
        [result appendString: [obj description]];
        [result appendString: @","];
    }
    NSUInteger len = [result length];//获取字符串长度
    [result deleteCharactersInRange: NSMakeRange(len - 1, 1)];//去除最后一个字符
    [result appendString: @"]"];
    return result;
}
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个初始容量为10的set集合
        NSMutableSet *set = [NSMutableSet setWithCapacity: 10];
        
        //向集合中添加一个元素
        [set addObject: @"C罗是欧冠之王"];
        NSLog(@"set添加一个元素后：%@", NSCollectionToString(set));
        
        //利用NSArray向集合中添加多个元素
        [set addObjectsFromArray: [NSArray arrayWithObjects: @"最伟大球员", @"永不言败", @"永远的传奇", nil]];
        NSLog(@"set使用NSArray添加三个元素后：%@", NSCollectionToString(set));
        
        //删除集合中指定元素
        [set removeObject: @"永不言败"];
        NSLog(@"set删除一个元素后：%@", NSCollectionToString(set));
        
        NSSet *set2 = [NSSet setWithObjects: @"罗纳尔多", @"最伟大球员", nil];
        //计算两个集合的并集
        [set unionSet: set2];
        NSLog(@"set和set2的并集：%@", NSCollectionToString(set));
        //计算两个集合的差集
        [set minusSet: set2];
        NSLog(@"set和set2的差集：%@", NSCollectionToString(set));
        //计算两个集合的交集
        [set intersectSet: set2];
        NSLog(@"set和set2的交集：%@", NSCollectionToString(set));
        //用set2的集合元素替换set集合的所有元素
        [set setSet: set2];
        NSLog(@"用set2的集合元素替换set集合的所有元素：%@", NSCollectionToString(set));
    }
    return 0;
}

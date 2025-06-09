//
//  main.m
//  teste
//
//  Created by 吴桐 on 2025/5/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *original = [NSMutableString stringWithString:@"hello"];

        NSString *copy1 = [original copy];
        NSMutableString *copy2 = [original copy];

        NSMutableString *original2 = [NSMutableString stringWithString:@"world"];
        // NSMutableString *badCopy = [original2 copy];  // 实际返回 NSString，不是真正可变的

        // 打印地址和类型信息
        NSLog(@"\n[原始对象 original] = %@, 地址: %p, 类型: %@",
              original, original, NSStringFromClass([original class]));

        NSLog(@"[copy1 = [original copy]] = %@, 地址: %p, 类型: %@",
              copy1, copy1, NSStringFromClass([copy1 class]));

        NSLog(@"[copy2 = [original mutableCopy]] = %@, 地址: %p, 类型: %@",
              copy2, copy2, NSStringFromClass([copy2 class]));

        // 修改 copy2，验证它是可变的
        [copy2 appendString:@"_mutable"];
        NSLog(@"修改 copy2 后: %@", copy2);

        //[copy1 appendString:@"_fail"]; // ❌ 会崩溃

        // 正确使用强制类型转换（不推荐，一般不安全）
        if ([copy2 isKindOfClass:[NSMutableString class]]) {
            NSLog(@"copy2 是 NSMutableString 类型，可变");
        }

        // 验证 copy1 和 original 是否地址相同（NSString 在 copy 时，可能是浅拷贝）
        NSLog(@"original == copy1 ? %@", (original == copy1) ? @"YES" : @"NO");
        NSLog(@"original == copy2 ? %@", (original == copy2) ? @"YES" : @"NO");
    }
    return 0;
}

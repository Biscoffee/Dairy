//
//  Singleton.h
//  懒汉模式rewrite
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>
#
NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject
+(id) shareInstance;
+(id) allocWithZone:(struct _NSZone *)zone;
@end

NS_ASSUME_NONNULL_END

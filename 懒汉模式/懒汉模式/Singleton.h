//
//  Singleton.h
//  懒汉模式
//
//  Created by 吴桐 on 2025/5/17.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (id)sharedInstance;
+(id) allocWithZone:(struct _NSZone *)zone;


@end

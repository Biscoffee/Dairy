//
//  Singleton.h
//  单例模式2
//
//  Created by 吴桐 on 2025/5/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject <NSCopying, NSMutableCopying>

@property (nonatomic, strong) NSString* data;

+(instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END

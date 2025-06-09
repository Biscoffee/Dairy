//
//  Person.h
//  深复制与浅复制
//
//  Created by 吴桐 on 2025/5/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@end

NS_ASSUME_NONNULL_END



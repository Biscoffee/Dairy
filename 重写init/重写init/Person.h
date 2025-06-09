//
//  Person.h
//  重写init
//
//  Created by 吴桐 on 2025/5/15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* saying;
@property (nonatomic,assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END

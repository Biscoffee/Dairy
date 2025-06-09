//
//  Person.h
//  strong，copy
//
//  Created by 吴桐 on 2025/5/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, copy) NSMutableString* name;
@property (nonatomic, assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END

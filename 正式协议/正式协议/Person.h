//
//  Person.h
//  正式协议
//
//  Created by 吴桐 on 2025/5/15.
//

#import <Foundation/Foundation.h>
#import "Printable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<Printable>

@property (nonatomic,copy) NSString* name;
@property (nonatomic,assign) NSInteger age;

@end

NS_ASSUME_NONNULL_END

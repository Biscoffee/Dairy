//
//  FKUser.h
//  NSArray判断制定元素位置的标准
//
//  Created by 吴桐 on 2025/5/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKUser : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *pass;

-(id) initWithName: (NSString*) aName pass: (NSString*) aPass;
-(void) say: (NSString*) content;

@end

NS_ASSUME_NONNULL_END

//
//  FKUser.m
//  NSArray判断制定元素位置的标准
//
//  Created by 吴桐 on 2025/5/12.
//

#import "FKUser.h"

@implementation FKUser

@synthesize name;
@synthesize pass;

-(id)initWithName:(NSString *)aName pass:(NSString *)aPass {
    if (self = [super init]) {
        self.name = aName;  // 触发 copy
        self.pass = aPass;  // 触发 copy
    }
    return self;
}

- (void) say: (NSString*) content {
    NSLog(@"%@说：%@",self.name,content);
}
- (BOOL) isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    if ([other class] == FKUser.class) {
        FKUser *target = (FKUser*) other;
        return [self.name isEqualToString:target.name] && [self.pass isEqualToString:target.pass];
    }
    return NO;
}
@end

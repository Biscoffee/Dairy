//
//  FKUser.m
//  NSSet判断集合元素重复的标准
//
//  Created by 吴桐 on 2025/5/13.
//

#import "FKUser.h"

@implementation FKUser

- (id) initWithName:(NSString *)aName pass:(NSString *)aPass {
    if (self = [super init]) {
        self.name = aName;
        self.pass = aPass;
    }
    return self;
}
-(void) say:(NSString *)content {
    NSLog(@"%@说：%@",self.name,content);
}
-(BOOL) isEqual:(id)other {
    if (self == other) {
        return YES;
    }
    if ([other class] == FKUser.class) {
        FKUser *target = (FKUser*)other;
        return [self.name isEqualToString:target.name] && [self.pass isEqualToString:target.pass];
    }
    return NO;
}
-(NSUInteger) hash  {
    NSLog(@"===hash===");
    NSUInteger nameHash = self.name == nil ? 0 : [self.name hash];
    NSUInteger passHash = self.pass == nil ? 0 : [self.pass hash];
    return nameHash * 31 + passHash;
}

-(NSString*) description {
    return [NSString stringWithFormat:@"FKUser[name = %@,pass = %@]",self.name,self.pass];
}
@end

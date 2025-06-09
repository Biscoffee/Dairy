//
//  Person.m
//  正式协议
//
//  Created by 吴桐 on 2025/5/15.
//

#import "Person.h"

@implementation Person

-(void) printInfo {
    NSLog(@"Name: %@, Age: %ld", self.name, self.age);
}

- (NSString *)infoSummary {
    return [NSString stringWithFormat:@"%@ is %ld years old.", self.name, (long)self.age];
}
@end

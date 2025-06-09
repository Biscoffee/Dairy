//
//  main.m
//  strong，copy
//
//  Created by 吴桐 on 2025/5/14.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString *otherName = [[NSMutableString alloc] initWithString:@"Jack "];
             Person *person = [[Person alloc] init];
             person.name = otherName;
             person.age = 23;
          
             [person.name appendString:@"and rose"];
             NSLog(@"person.name = %@",person.name);

    }
    return 0;
}

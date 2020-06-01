//
//  main.m
//  OCDeepKnowledge
//
//  Created by 郑章海 on 2020/5/27.
//  Copyright © 2020 zzh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

@interface Person: NSObject {
    @public
    int _age;
//    int _name;
//    char _height;
    
    NSMutableArray *_string;
}
@end
@implementation Person
@end

@interface Student : Person {
    @public
    int _studentId;
}
@end
@implementation Student
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"abc";
        NSLog(@"%@", str);
        
        
    }
    return 0;
}


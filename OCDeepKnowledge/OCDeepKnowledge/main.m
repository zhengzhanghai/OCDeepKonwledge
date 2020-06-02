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
}
@end
@implementation Person
@end

@interface Student : Person {
    @public
    long long _studentId;
}
@end
@implementation Student
@end

struct Person_Impl {
    Class isa;
    int _age;
    long long _studentId;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *student = [[Student alloc] init];
        student->_age = 258;
        student->_studentId = 2;
        
        struct Person_Impl *personImpl = (__bridge struct Person_Impl *)student;
        personImpl->_age = 20;
        personImpl->_studentId = 30;
        
        NSLog(@"");
    }
    return 0;
}


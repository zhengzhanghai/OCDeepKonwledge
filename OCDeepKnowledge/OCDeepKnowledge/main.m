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
    int _name;
    int _oop;
}

@end

@implementation Person

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *person = [[Person alloc] init];
        person->_age = 1;
        person->_name = 2;
        person->_oop = 3;
        
        NSLog(@"%zd", class_getInstanceSize([Person class]));
        NSLog(@"%zd", malloc_size((__bridge const void *)person));
        
    }
    return 0;
}

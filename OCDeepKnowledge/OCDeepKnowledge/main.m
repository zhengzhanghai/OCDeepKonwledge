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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        @interface NSObject <NSObject> {
//            Class isa  OBJC_ISA_AVAILABILITY;
//        }
// Class 也是一个结构体
        NSObject *obj = [[NSObject alloc] init];
// 这句代码生成c/c++后是这样的
//        struct NSObject_IMPL {
//            Class isa;
//        };

        // 一个指针占用内存大小 8 个字节
        
        // 获得NSObject对象成员变量所占用的大小  8个字节
        NSLog(@"%zd", class_getInstanceSize([NSObject class]));
        
        // OC 对象至少分配16个字节
        // obj指针所指向的内存的大小  16个字节，实际只用到8个字节
        NSLog(@"%zd", malloc_size((__bridge const void *) obj));
        
//        oc对象分配内存调用的方法,如果是小于16，就分配16
//        _class_createInstanceFromZone(Class cls, size_t extraBytes, void *zone)
//        {
//            void *bytes;
//            size_t size;
//
//            // Can't create something for nothing
//            if (!cls) return nil;
//
//            // Allocate and initialize
//            size = cls->alignedInstanceSize() + extraBytes;
//
//            // CF requires all objects be at least 16 bytes.
//            if (size < 16) size = 16;
//
//            if (zone) {
//                bytes = malloc_zone_calloc((malloc_zone_t *)zone, 1, size);
//            } else {
//                bytes = calloc(1, size);
//            }
//
//            return objc_constructInstance(cls, bytes);
//        }
        
    }
    return 0;
}

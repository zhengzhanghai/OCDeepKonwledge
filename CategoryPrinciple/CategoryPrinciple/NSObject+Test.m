//
//  NSObject+Test.m
//  CategoryPrinciple
//
//  Created by ZZH on 2020/7/5.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "NSObject+Test.h"
#import <objc/runtime.h>

// 用全局变量，多个对象共用一个height_，肯定是有问题的
int height_ = 0;
NSMutableDictionary *objTestDict_;

@implementation NSObject (Test)

const void *ZHHeightKey = &ZHHeightKey;

+ (void)load {
    objTestDict_ = @{}.mutableCopy;
}

- (void)setHeight:(int)height {
//    height_ = height;
//    objTestDict_[[self flag]] = @(height);
    objc_setAssociatedObject(self, ZHHeightKey, @(height), OBJC_ASSOCIATION_ASSIGN);
}

- (int)height {
//    return height_;
//    return [objTestDict_[[self flag]] intValue];
    return [objc_getAssociatedObject(self, ZHHeightKey) intValue];
}

const void *ZHNameKey = &ZHNameKey;


- (void)setTestName:(NSString *)testName {
    objc_setAssociatedObject(self, ZHNameKey, testName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)testName {
    return objc_getAssociatedObject(self, ZHNameKey);
}

- (NSString *)flag {
    return [NSString stringWithFormat:@"%p", self];
}
@end

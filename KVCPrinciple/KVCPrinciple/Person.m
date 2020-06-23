//
//  Person.m
//  KVCPrinciple
//
//  Created by 郑章海 on 2020/6/23.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

@implementation Cat


@end

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cat = [[Cat alloc] init];
    }
    return self;
}

//- (void)setAge:(int)age {
//    _age = age;
//    NSLog(@"调用setAge:方法");
//}

//- (void)_setAge:(int)age {
////    _age = age;
//    NSLog(@"调用_setAge:方法");
//}
//
//- (void)setIsAge:(int)isAge {
//    NSLog(@"dddd");
//}

//- (void)_setIsAge:(int)isAge {
//    NSLog(@"ffffff");
//}

+ (BOOL)accessInstanceVariablesDirectly {
    return true;
}

@end

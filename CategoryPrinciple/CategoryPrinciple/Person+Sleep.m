//
//  Person+Sleep.m
//  CategoryPrinciple
//
//  Created by 郑章海 on 2020/7/3.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person+Sleep.h"


@implementation Person (Sleep)

- (void)sleep {
    NSLog(@"sleep");
}

- (void)eat123 {
    NSLog(@"Sleep  eat123");
}


+ (void)eatMyFood {
    
}

+ (void)load {
    NSLog(@"Person  sleep");
}

+ (void)initialize
{
    NSLog(@"initialize  person sleep");
}
@end

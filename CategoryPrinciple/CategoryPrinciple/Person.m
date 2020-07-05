//
//  Person.m
//  CategoryPrinciple
//
//  Created by 郑章海 on 2020/6/4.
//  Copyright © 2020 zzh. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run {
    NSLog(@"本类  run");
}

- (void)eat123 {
    
}

+ (void)load {
    NSLog(@"Person");
}

+ (void)initialize {
    NSLog(@"initialize");
}

+ (void)hhhhhh {
    NSLog(@"");
}
@end

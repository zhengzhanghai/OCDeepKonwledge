//
//  Person.m
//  Block
//
//  Created by ZZH on 2020/7/5.
//  Copyright © 2020 ZZH. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)testMyBlock {
    void(^myBlock)(void) = ^{
        NSLog(@"%@", self);
    };
    myBlock();
}

@end

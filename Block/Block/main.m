//
//  main.m
//  Block
//
//  Created by ZZH on 2020/7/5.
//  Copyright © 2020 ZZH. All rights reserved.
//


#import <Foundation/Foundation.h>

int cccc = 10;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int age = 10;
        static int height = 20;
        
        void(^myBlock)(int, int) = [^(int a, int b) {
            NSLog(@"调用Block:  a = %d    b = %d   age = %d  height = %d   ccc = %d", a, b, age, height, cccc);
        } copy];
        
        void(^myBlock1)(int) = ^(int a) {
            NSLog(@"%d", a);
        };
        
        NSLog(@"\n%@\n%@\n%@", [myBlock class], [myBlock1 class], [^{
            NSLog(@"%d", cccc);
        } class]);
        
     
//        myBlock(age, 20);
//
//        age = 200;
//        height = 100000;
//        cccc = 9090;
//
//        myBlock(age, 30);
    }
    return 0;
}
//
//
//     NSLog(@"%@", [myBlock class]);
//     NSLog(@"%@", [[myBlock class] superclass]);
//     NSLog(@"%@", [[[myBlock class] superclass] superclass]);
//     NSLog(@"%@", [[[[myBlock class] superclass] superclass] superclass]);
//
//

//
//struct __main_block_impl_0 {
//  struct __block_impl impl;
//  struct __main_block_desc_0* Desc;
//  int age;
//  __main_block_impl_0(void *fp, struct __main_block_desc_0 *desc, int _age, int flags=0) : age(_age) {
//    impl.isa = &_NSConcreteStackBlock;
//    impl.Flags = flags;
//    impl.FuncPtr = fp;
//    Desc = desc;
//  }
//};
//
//
//struct __block_impl {
//  void *isa;
//  int Flags;
//  int Reserved;
//  void *FuncPtr;
//};

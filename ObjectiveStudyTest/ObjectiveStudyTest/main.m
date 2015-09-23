//
//  main.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "com/nanxiaoqiang/test/objectivec/expression/Calculator.h"
#import "com/nanxiaoqiang/test/objectivec/class1/Car.h"
#import "com/nanxiaoqiang/test/objectivec/loop/MyLoop.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"This is my First Objective-C Program.");
        NSLog(@"Hello, World!");
        int aInt = 123;
        char aChar = 'Q';
        float aFloat =  331.79;// 因为float还是二进制值，所以不是绝对的，输出会变成331.79009
        double aDouble = 1.523e+12;
        short aShort = 8;
        // NSString * aString = @"This is String";
        NSLog(@"int is %i, char is %c, float is %f, double is %g and %e, short is %i", aInt
              , aChar,aFloat, aDouble, aDouble,     aShort);
        // char                   %c
        // short int              %hi, %hx, %ho
        // unsigned short int     %hu, %hx, %ho
        // int                    %u, %x, %o
        // unsigned int           %u, %x, %o
        // long int               %li, %lx, %lo
        // unsigned long int      %lu, %lx, %lo
        // long long int          %lli, %llx, %llo
        // unsigned long long int %lli, %llx, %llo
        // float                  %f, %e, %g, %a
        // double                 %f, %e, %g, %a
        // long double            %f, %e, %g, %a
        // id (nil)               %p
        NSLog(@"a%%b");
        [Car show];
        [Calculator show];
        [MyLoop show];
    }
    return 0;
}

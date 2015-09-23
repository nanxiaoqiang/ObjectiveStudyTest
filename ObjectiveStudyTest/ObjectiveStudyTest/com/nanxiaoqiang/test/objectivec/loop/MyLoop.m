//
//  MyLoop.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyLoop.h"

@implementation MyLoop

+ (void) forTest
{
    int result = 0;
    int add = 1;
    int end = 100;
    for (; add<=end; add++) {
        result += add;
    }
    NSLog(@"1 add to 100 is %i", result);
}

+ (void) whileTest
{
    int a = 100;
    int result = a;
    while (a-->0) {
        result += a;
    }
    NSLog(@"while result is %i", result);
}

+ (void) doWhileTest
{
    int a = 1;
    int result = 0;
    do
    {
        result += a;
        a++;
    }
    while(a<=100);
    NSLog(@"do while result is %i", result);
}

+ (void) show
{
    [MyLoop forTest];
    [MyLoop whileTest];
    [MyLoop doWhileTest];
}

@end
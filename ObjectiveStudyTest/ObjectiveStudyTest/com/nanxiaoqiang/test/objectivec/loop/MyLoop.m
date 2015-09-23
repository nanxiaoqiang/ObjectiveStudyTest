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

@end
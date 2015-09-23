//
//  Caculator.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>   
#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}

- (void) setAccumulator:(double)value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (void) add:(double)value
{
    accumulator += value;
}

- (void) subtract:(double)value
{
    accumulator -= value;
}

- (void) multipy:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

@end
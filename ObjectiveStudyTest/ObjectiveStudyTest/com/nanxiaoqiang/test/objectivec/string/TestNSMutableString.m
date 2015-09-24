//
//  TestNSMutableString.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestNSMutableString.h"

@implementation TestNSMutableString

+ (void) show
{
    NSMutableString * mutableString = [NSMutableString stringWithCapacity:50];// 初始化的方法，先给个长度
    [mutableString appendFormat: @":%i 2nd msg LOL.", 1];
    NSLog(@"%@", mutableString );
    [mutableString deleteCharactersInRange:[mutableString rangeOfString:@"LOL"]];
    NSLog(@"%@", mutableString );
}

@end
//
//  PersonCategory.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/28.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonCategory.h"

@implementation Person (Live)

- (void) school
{
    NSLog(@"Livs is goto school");
}

- (void) work
{
    NSLog(@"Live is Work");
}

- (void) dead
{
    NSLog(@"Live is dead");// Category如果复写虽然会报Warnning，但是实际上还是使用Person(Category)的方法
}

+ (void) show
{
    Person * p = [[Person alloc]init];
    [p dead];
}

@end
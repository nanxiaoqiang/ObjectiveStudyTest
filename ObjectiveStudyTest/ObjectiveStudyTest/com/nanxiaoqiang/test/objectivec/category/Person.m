//
//  Person.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/28.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

- (void) born
{
    NSLog(@"Person born");
}

- (void) dead
{
    NSLog(@"Person dead");
}

- (void) sayHello:(NSString *)name
{
    NSLog(@"Hi~My Name is %@", name);
}

@end
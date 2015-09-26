//
//  TestInitClass.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/26.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestInitClass.h"

@implementation TestInitClass

/*
 - (instancetype) init
{
    self = [super init];
    if(self)
    {
        NSLog(@"Class Init");
    }
    return self;
}
*/


/*- (void) dealloc
{
    NSLog(@"Class delloc");
    [super dealloc];
}
*/

// @synthesize innerFirstIntProperty;

- (NSString *) description
{
    NSLog(@"old description:%@", [super description]);
    NSString * desc;
    desc = [[NSString alloc]initWithFormat:@"Class Name TestInitClass\nproperty:_firstIntProperty:%i\nproperty:_secondFLoatProperty:%f\nproperty:_thirdNSStringProperty:%@", [self firstIntProperty], [self secondFloatProperty], [self thirdNSStringProperty]];
    return desc;
}

+ (void) show
{
    TestInitClass * test = [[TestInitClass alloc]init];
    [test setFirstIntProperty:123];
    NSLog(@"first int property is %i", [test firstIntProperty]);
    NSLog(@"decription is %@", [test description]);
    // test retain
}

@end
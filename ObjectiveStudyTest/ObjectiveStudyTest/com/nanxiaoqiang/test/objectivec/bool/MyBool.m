//
//  MyBool.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyBool.h"

@implementation MyBool

+ (void) boolTest
{
    BOOL myBool1 = 0;
    BOOL myBool2 = 1;
    if (myBool2) {
        NSLog(@"myBool2 (1) is true");
    }else{
        NSLog(@"myBool2 (1) is false");
    }
    if(myBool1){
        NSLog(@"myBool1 (0) is true");
    }else{
        NSLog(@"myBool1 (0) is false");
    }
    NSLog(@"myBool1 is %i", myBool1);// 用%c无法输出结果
}

+ (void) show
{
    [MyBool boolTest];
}

@end

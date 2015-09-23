//
//  Car.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
//----  implementation Car

@implementation Car
{
    int numberator;

    int denominator;
}

- (void) print
{
    NSLog(@"print %i/%i",  numberator, denominator);
}

- (void) setNumberator:(int)n
{
    numberator = n;
}

- (void) setDenominator:(int)d
{
    denominator = d;
}

@end

//---- Program Section
/*
int main (int argc, const char * argv[])
{
    @autoreleasepool {
        Car * car1;
        Car * car2;
        
        car1 = [[Car alloc]init];
        car2 = [[Car alloc]init];
        
        [car1 setNumberator: 1150];
        [car1 setDenominator: 3450];
        
        [car2 setNumberator: 5];
        [car2 setDenominator: 99];
        
        [car1 print];
        [car2 print];
    }
    return 0;
}*/
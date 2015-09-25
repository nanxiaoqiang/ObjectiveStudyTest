//
//  TestNSArray.m
//  ObjectiveStudyTest
//  数组
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestNSArray.h"

@implementation TestNSArray

+ (void) showTestNSArray
{
    NSArray * array;// NSArray只能存储对象
    array = [NSArray arrayWithObjects:@"nanxiaoqiang", @"mncc", @"monicc", @"NXQ", nil];// 初始化的时候要用nil做结尾，所以NSArray中不能放入nil
    NSLog(@"NSArray length is %lu", [array count]);
    for (int i = 0; i< [array count]; i++) {
        NSLog(@"array's No.%i item is %@", i, [array objectAtIndex:i]);
    }
    NSString * str = @"nanxiaoqiang:mnc:monicc:NXQ:";
    NSArray * array1;
    array1 = [str componentsSeparatedByString:@":"];
    NSLog(@"array length is %lu", [array1 count]);
    NSLog(@"5th item is \'%@\'", [array1 objectAtIndex:4]);
    NSString * str1 = [array1 componentsJoinedByString:@","];
    NSLog(@"合并后的字符串：%@", str1);
    // 下边的句子会爆出异常NSRangeException
    // NSLog(@"5th item is %@", [array objectAtIndex:5]);
    NSLog(@"下边是for-in循环");
    for (NSString * string in array1) {
        NSLog(@"使用for-in遍历:item is %@", string);
    }
}

// 可变数组
+ (void) showTestNSMutableArray
{
    NSMutableArray * array;
    array = [NSMutableArray arrayWithCapacity:10];
    // 即便是初始化后，count也是0，给入的数字实际上是capacity
    NSLog(@"after init NSArray length is %lu", [array count]);
    for (int i = 0 ; i < 15 ; i++) {
        [array addObject: [NSString stringWithFormat: @"Str%i", i]];
    }
    NSLog(@"NSArray length is %lu", [array count]);
    for (int i = 0; i< [array count]; i++) {
        NSLog(@"array's No.%i item is %@", i, [array objectAtIndex:i]);
    }
    [array removeObjectAtIndex:10];// 删除第11个(从0开始)
    NSLog(@"after remove NSArray length is %lu", [array count]);
    for (int i = 0; i< [array count]; i++) {
        NSLog(@"array's No.%i item is %@", i, [array objectAtIndex:i]);
    }

}

+ (void) showTestNSDictionary
{
    NSDictionary * dict;
    dict = [NSDictionary dictionaryWithObjectsAndKeys:@"obj1", @"key1", @"obj2", @"key2", @"obj3", @"key3", nil];
    NSLog(@"get from key:%@ is %@", @"key2", [dict objectForKey:@"key2"]);
    NSLog(@"找一个不存在的key:%@ is %@", @"233", [dict objectForKey:@"233"]);
    if([dict objectForKey:@"233"] == nil)
    {
        NSLog(@"查无此key:233");
    }
    NSLog(@"---------------------------");
    NSMutableDictionary * mDict;
    mDict = [NSMutableDictionary dictionaryWithCapacity:5];
    for(int i = 0; i<6; i++)
    {
        [mDict setObject:[NSString stringWithFormat:@"Obj%i",i] forKey:[NSString stringWithFormat:@"key%i", i]];
    }
    NSLog(@"mDict length is %lu", [mDict count]);
    [mDict removeObjectForKey:@"key3"];// 删除一个
    NSLog(@"mDict %lu", [[mDict allKeys]count]);
    for (NSString * key in mDict) {
        NSLog(@"get key %@ is %@", key, [mDict objectForKey:key]);
    }
}

+ (void) testNSNumber
{
    NSNumber * number1;
    NSNumber * number2;
    NSNumber * number3;
    NSNumber * number4;
    NSNumber * number5;
    NSNumber * number6;
    NSNumber * number7;
    number1 = [NSNumber numberWithBool:true];
    number2 = [NSNumber numberWithChar:'A'];
    number3 = [NSNumber numberWithDouble:331.79];
    number4 = [NSNumber numberWithInt:-129];
    NSInteger myInt = 4214;
    number5 = [NSNumber numberWithInteger: myInt];
    NSLog(@"numbers: \n%i\n%i\n%f\n%i\n%i\n%@\n%@", [number1 intValue], [number2 intValue], [number3 doubleValue], [number4 intValue], [number5 intValue], number6, number7);
    
}

+ (void) showNSValue
{
    NSRect rect = NSMakeRect(1, 2, 5, 15);
    NSValue * value;
    // 采用的是二进制的方式
    value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
    NSMutableArray * array;
    array = [NSMutableArray arrayWithCapacity:10];
    [array addObject:value];
    NSValue * value1;
    value1 = [array objectAtIndex:0];
    NSRect rect1;
    [value1 getValue: &rect1];
    NSLog(@"rect1 :%f %f %f %f", rect1.origin.x, rect1.origin.y, rect1.size.width, rect1.size.height);
    NSLog(@"------------------------");
    // 其实NSValue可以直接转存NSRect、NSPoint、NSSize、NSPointer、NSRange、NSEdgeInsets基数struct
    NSRect rect2 = NSMakeRect(2, 4, 6, 8);
    NSPoint point1 = NSMakePoint(2, 8);
    NSSize size1 = NSMakeSize(10, 20);
    NSValue * value2;
    NSValue * value3;
    NSValue * value4;
    value2 = [NSValue valueWithRect:rect2];
    value3 = [NSValue valueWithPoint:point1];
    value4 = [NSValue valueWithSize:size1];
    NSRect rect3 = [value2 rectValue];
    NSPoint point2 = [value3 pointValue];
    NSSize size2 = [value4 sizeValue];
    NSLog(@"rect from NSValue:%f %f %f %f", rect3.origin.x, rect3.origin.y, rect3.size.width, rect.size.height);
    NSLog(@"point from NSValue:%f %f", point2.x, point2.y);
    NSLog(@"size from NSValue:%f %f", size2.width, size2.height);
}

+ (void) show
{
    [self showTestNSArray];
    [self showTestNSMutableArray];
    [self showTestNSDictionary];
    [self testNSNumber];
    [self showNSValue];
}


@end
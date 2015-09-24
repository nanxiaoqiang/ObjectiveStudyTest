//
//  TestNSString.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestNSString.h"

@implementation TestNSString

// equals的判断
+ (void) testEquals
{
    NSString * str1;// 输出 (null)
    NSString * str2;
    NSString * str3;
    NSString * str4;
    str2 = @"Hello World! 42";
    str3 =[NSString stringWithFormat: @"Hello World! %i", 42];
    str4 =[NSString stringWithFormat: @"hello world! %i", 42];
    NSLog(@"str1 is %@\nstr2 is %@\nstr3 is %@\nstr4 is %@",str1, str2, str3, str4);
    if([str2 isEqualToString:str3])
    {
        NSLog(@"str2 And str3 is Equals!");
    }
    else
    {
        NSLog(@"str2 and str3 are NOT equals");
    }
    if([str2 compare: str3 options: NSLiteralSearch| NSNumericSearch] == NSOrderedSame)// 完全比较，还有个NSNumericSearch，比较字符串个数
    {
        NSLog(@"str2 And str3 is Equals!");
    }
    else
    {
        NSLog(@"str2 and str3 are NOT equals");
    }
    if([str2 compare: str4 options: NSCaseInsensitiveSearch] == NSOrderedSame)// 忽略大小写
    {
        NSLog(@"str2 And str4 is Equals!");
    }
    else
    {
        NSLog(@"str2 and str4 are NOT equals");
    }
    
}

+ (void) hasString
{
    NSString * str1 = @"名侦探柯南剧场版.业火的向日葵.JP.CNS.mp4";
    NSString * str2 = @"名侦探柯南剧场版.火烧摩天楼.JP.CNS.mp4";
    NSString * str3 = @"名侦探柯南VS鲁邦三世.业火的向日葵.JP.CNS.mkv";
    if([str1 hasPrefix: @"名侦探柯南剧场版"])
    {
        NSLog(@"字符串有\"名侦探柯南剧场版\"");
    }
    if([str3 hasSuffix: @"mkv"])
    {
        NSLog(@"文件类型是mkv");
    }
    NSRange range;
    range = [str2 rangeOfString: @"摩天轮"];
    // 老版本说的是如果没有找到的话range.start的结果是NSNotFound
    // 但是现在没有这个start属性
    // 所以只能通过length来判断
    if(range.length > 0)
    {
        NSLog(@"发现匹配，位置在%lu, 共匹配%lu处", range.location, range.length);
    }
    else
    {
        NSLog(@"字符串中没有\"摩天\"两个字");
    }
}

+ (void) show
{
    [TestNSString testEquals];
    [TestNSString hasString];
}

@end
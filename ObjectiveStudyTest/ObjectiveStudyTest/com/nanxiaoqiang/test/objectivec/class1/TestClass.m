//
//  TestClass.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/26.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "TestClass.h"
int gGlobalVal = 5;
static int intOutClass;
@implementation TestClass
{
    // static int intInClass = 0;// 这里不能写
    InnerTestClass * innerTestClass;}
@synthesize myStr1;
@synthesize myDouble1;

+ (void) show
{
    NSLog(@"--------------------------");
    TestClass * t = [[TestClass alloc]init];
    [t setMyDouble1:NAN];// 如果赋值NAN,int会输出8?double输出nan
    NSLog(@"%@", [t description]);
    [t testStaticInMethod];
    [t testStaticInMethod2];
    // 调用了两侧testStaticInMethod，返回的值是2!
    // 两个方法中可以储存名字相同的变量。
    NSLog(@"hehe static int in method is %d & %d", [t testStaticInMethod], [t testStaticInMethod2]);
    [t testStaticOutClass];
    NSLog(@"static int out class is %d", [t testStaticOutClass]);
    NSLog(@"*****************");
    TestClass * test2 = [TestClass testParamTestClass:t];
    NSLog(@"t myInt is %d and test2 myInt is %d", [t myInt1], [test2 myInt1]);
    NSLog(@"*****************");
    NSLog(@"class version is %ld", (long)[[TestClass class] version]);
    // versiTestClass isSubclassOfClass:[NSObject class]on是0
    NSLog(@"TestClass isSubclassOfClass NSObject?:%hhd", [TestClass isSubclassOfClass:[NSObject class]]);// 是
    NSLog(@"TestClass isSubclassOfClass NSString?:%hhd", [TestClass isSubclassOfClass:[NSString class]]);// 否
    NSLog(@"t is TestClass?%hhd", [t isKindOfClass:[TestClass class]]);
    NSLog(@"t is NSObject?%hhd", [t isKindOfClass:[NSObject class]]);
    // isKindOfClass父类也可以
    NSLog(@"t is member of TestClass?%hhd", [t isMemberOfClass: [TestClass class]]);
    NSLog(@"t is member of NSObject?%hhd", [t isMemberOfClass:[NSObject class]]);
    // isMemberOfClass父类不行
    InnerTestClass * itc = [[InnerTestClass alloc]init];
    NSLog(@"itct is member of TestClass?%hhd", [itc isMemberOfClass: [TestClass class]]);// NO
    
    NSLog(@"t有方法testMethod1？%hhd", [t respondsToSelector: @selector(testMethod1)]);// ？ YES
    NSLog(@"t有方法testStaticInMethod？%hhd", [t respondsToSelector: @selector(testStaticInMethod)]);
    NSLog(@"t有方法testParamTestClassSetParam？%hhd", [t respondsToSelector: @selector(testParamTestClassSetParam:)]);
    // 上边的三个，正常的public方法均可(没有在interface中声明也行)
    NSLog(@"t有方法alloc？%hhd", [t respondsToSelector: @selector(alloc)]);
    // 从NSObject的方法无效？？？
    NSLog(@"t是方法testParamTestClass的返回值？%hhd", [t respondsToSelector: @selector(testParamTestClass:)]);// ？ NO static方法无法识别
    NSLog(@"---------------------- START EXTERN TEST---------");
    NSLog(@"%d", gGlobalVal);
    [self externTest];
    NSLog(@"%d", gGlobalVal);
    
}

+ (void) externTest
{
    // extern算是取得全局变量？
    extern int gGlobalVal;
    NSLog(@"gGlobalVal is %d", gGlobalVal);
    gGlobalVal = 100;
    NSLog(@"after change gGlobalVal is %d", gGlobalVal);
}

- (int) testStaticInMethod
{
    static int a = 0;
    a++;
    return a;
}

- (int) testStaticInMethod2
{
    static int a = 0;
    a++;
    return a;
}

- (int) testStaticOutClass
{
    intOutClass++;
    return intOutClass;
}

+ (TestClass *) testParamTestClass: (TestClass *) test
{
    [test setMyInt1:1151];
    return test;
}

- (TestClass *) testParamTestClassSetParam: (TestClass *) test
{
    [test setMyInt1:1151];
    return test;
}

- (NSString *) description
{
    NSString * desc;
    desc = [NSString stringWithFormat: @"myStr1:%@\nmyDouble1:%g\n_myInt1:%i", [self myStr1], [self myDouble1], [self myInt1]];
    if ([self myDouble1] == NAN)// 没有进去
    {
        NSLog(@"myDouble1 is %f", [self myDouble1]);
    }
    return desc;
}

- (void) testMethod1
{
    // doNothing……
}

@end

@implementation InnerTestClass

+ (void) show
{

}

@end

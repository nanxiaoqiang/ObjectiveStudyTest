//
//  TestClass.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/26.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject

@property NSString * myStr1;
@property int myInt1;
@property double myDouble1;

+ (TestClass *) testParamTestClass: (TestClass *) test;
+ (void) show;

@end

@interface InnerTestClass : NSObject

+ (void) show;

@end
//
//  Calculator.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h


#import <Foundation/Foundation.h>

@interface Calculator : NSObject
// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multipy: (double) value;
- (void) divide: (double) value;

// show method
+ (void) show;
@end
#endif /* Calculator_h */

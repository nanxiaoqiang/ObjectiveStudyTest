//
//  Car.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/23.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#ifndef Car_h
#define Car_h

#import <Foundation/Foundation.h>
//---- @interface section ---
@interface Car : NSObject
- (void) print;
- (void) setNumberator: (int) n;
- (void) setDenominator: (int)  d;

+ (void) show;
@end

#endif /* Car_h */

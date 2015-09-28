//
//  PersonCategory.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/28.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#ifndef PersonCategory_h
#define PersonCategory_h
#import "Person.h"
@interface Person (Live)

- (void) school;
- (void) work;
- (void) dead;

+ (void) show;
@end

#endif /* PersonCategory_h */

//
//  TestInitClass.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/26.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#ifndef TestInitClass_h
#define TestInitClass_h

@interface TestInitClass : NSObject
{
    int innerFirstIntProperty;
    float innnerSecondFloatProperty;
    NSString * innerThirdNSStringProperty;
}

/*使用@property会自动产生一个_firstIntProperty的属性*/
@property int firstIntProperty;
@property float secondFloatProperty;
@property NSString * thirdNSStringProperty;

+ (void) show;

@end

#endif /* TestInitClass_h */

//
//  Rectangle.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@implementation Rectangle

- (void) draw{
    NSLog(@"Draw a Rectangle at %i, %i, %i, %i with color %@", bounds.x, bounds.y, bounds.width, bounds.height,[self colorName:fillColor] );
}

@end
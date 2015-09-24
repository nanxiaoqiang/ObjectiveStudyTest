//
//  Circle.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@implementation Circle

- (instancetype) init
{
    if (self = [super init]) {
        fillColor = kWhiteColor;
        ShapeRect rect = {0, 0, 10, 10};
        bounds = rect;
    }
    return self;
}

- (instancetype) initWithColor: (ShapeColor) color Rect: (ShapeRect) rect
{
    self = [super init];
    if (self) {
        fillColor = color;
        bounds = rect;
    }
    return self;
}

- (void) draw{
    if (fillColor == kRedColor) {
        [super setFillColor: kBlackColor];// 虽然是修改的父类方法，但是仍然属性被修改了
    }
    NSLog(@"Draw a Circle at %i, %i, %i, %i with color %@", bounds.x, bounds.y, bounds.width, bounds.height,[self colorName:fillColor] );
    [super draw];
}

@end
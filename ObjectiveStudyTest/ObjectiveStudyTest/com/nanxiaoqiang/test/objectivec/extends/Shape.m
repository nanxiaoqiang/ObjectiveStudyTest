//
//  Shape.m
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@implementation Shape


- (void) setFillColor: (ShapeColor) color
{
    fillColor = color;
}

- (ShapeColor) fillColor
{
    if (fillColor == kBlackColor) {
        return kRedColor;
    }else{
        return fillColor;
    }
}

- (void) setBounds:(ShapeRect) b
{
    bounds = b;
}

- (ShapeRect) bounds
{
    return bounds;
}

- (NSString *) colorName:(ShapeColor) color{
    NSString * rt;
    switch (color) {
        case kBlueColor:
            rt = @"Blue";
            break;
        case kGreenColor:
            rt = @"Green";
            break;
        case kRedColor:
            rt = @"Red";
            break;
        case kBlackColor:
            rt = @"Black";
            break;
        case kWhiteColor:
            rt = @"White";
            break;
        default:
            rt = @"";
            break;
    }
    return rt;
}

- (void) draw
{
    NSLog(@"this is a Shape location %i & %i, width %i height %i with color %@ ", bounds.x, bounds.y, bounds.width, bounds.height, [self colorName:fillColor]);
}

+ (void) show
{
    ShapeRect rect1 = {1, 2, 5, 7};
    ShapeRect rect2 = {10, 25, 88, 36};
    Circle * circle = [[Circle alloc]init];
    Circle * circle1 = [[Circle alloc]init];
    Rectangle * rect = [[Rectangle alloc]init];
    [circle setBounds:rect1];
    [rect setBounds:rect2];
    [circle setFillColor:kRedColor];
    [rect setFillColor: kGreenColor];
    [rect draw];
    [circle draw];
    [circle1 draw];
    NSLog(@"new a Circle with param init……");
    Circle * circle2 = [[Circle alloc]initWithColor: kRedColor Rect: rect1];
    [circle2 draw];
    NSLog(@"circle's color is %i", circle2.fillColor);
    Shape * shap = [[Circle alloc]init];
    NSLog(@"--------- Down to shap draw ----------");
    [shap draw];
}
@end
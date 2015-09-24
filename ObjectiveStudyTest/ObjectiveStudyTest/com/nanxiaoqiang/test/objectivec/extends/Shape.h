//
//  Shape.h
//  ObjectiveStudyTest
//
//  Created by nanxiaoqiang on 15/9/24.
//  Copyright © 2015年 nanxiaoqiang. All rights reserved.
//

#ifndef Shape_h
#define Shape_h

typedef enum{
    kRedColor,
    kGreenColor,
    kBlueColor,
    kBlackColor,
    kWhiteColor
}ShapeColor;

typedef struct{
    int x, y, width, height;
} ShapeRect;

@interface Shape : NSObject
{
    ShapeColor fillColor;
    ShapeRect  bounds;
}

- (void) setFillColor: (ShapeColor) fillColor;
- (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (ShapeRect) bounds;
- (NSString *) colorName: (ShapeColor) color;
- (void) draw;
+ (void) show;

@end

@interface Circle : Shape
- (instancetype) initWithColor: (ShapeColor) color Rect: (ShapeRect) rect;
@end

@interface Rectangle : Shape


@end

#endif /* Shape_h */

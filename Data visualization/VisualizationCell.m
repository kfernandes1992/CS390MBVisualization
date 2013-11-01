//
//  VisualizationCell.m
//  Data visualization
//
//  Created by Erik Risinger on 11/1/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "VisualizationCell.h"

@implementation VisualizationCell

-(void) drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2.0);
    CGContextSetRGBFillColor(context, 0, 0, 1.0, 1.0);
    CGContextSetRGBStrokeColor(context, 0, 0, 1.0, 1.0);
    CGRect circlePoint = (CGRectMake(20.0, 20.0, 10.0, 10.0));
    
    CGContextFillEllipseInRect(context, circlePoint);
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

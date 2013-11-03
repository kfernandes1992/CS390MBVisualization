//
//  CPTGraphView.m
//  Data visualization
//
//  Created by Kevin Fernandes on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "CPTGraphView.h"

@implementation CPTGraphView
@synthesize graph;

- (id)init
{
    self = [super init];
    if (self) {
        
        graph= [self createGraph];
        [self createPlotSpaceForGraph:graph];
        [self setHostedGraph:graph];
    }
    return self;
}

-(CPTXYGraph*) createGraph{
    CPTXYGraph*x=[[CPTXYGraph alloc]init];
    x.paddingLeft = 20.0;
    x.paddingTop = 20.0;
    x.paddingRight = 20.0;
    x.paddingBottom = 20.0;
    
    return x;
}
-(void) createPlotSpaceForGraph:(CPTXYGraph*)g{
    CPTXYPlotSpace *plotSpace = (CPTXYPlotSpace *)g.defaultPlotSpace;
    plotSpace.xRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(-6)
                                                    length:CPTDecimalFromFloat(12)];
    plotSpace.yRange = [CPTPlotRange plotRangeWithLocation:CPTDecimalFromFloat(-5)
                                                    length:CPTDecimalFromFloat(30)];
    
    CPTLineStyle *lineStyle = [CPTLineStyle lineStyle];
    CPTXYAxisSet *axisSet = (CPTXYAxisSet *)g.axisSet;
    
    
    NSNumber *five= [[NSNumber alloc]initWithFloat:5.0];
    [axisSet.xAxis setMajorIntervalLength: [five decimalValue]];
    axisSet.xAxis.minorTicksPerInterval = 4;
    axisSet.xAxis.majorTickLineStyle = lineStyle;
    axisSet.xAxis.minorTickLineStyle = lineStyle;
    axisSet.xAxis.axisLineStyle = lineStyle;
    axisSet.xAxis.minorTickLength = 5.0f;
    axisSet.xAxis.majorTickLength = 7.0f;
    
    axisSet.yAxis.majorIntervalLength = [five decimalValue];
    axisSet.yAxis.minorTicksPerInterval = 4;
    axisSet.yAxis.majorTickLineStyle = lineStyle;
    axisSet.yAxis.minorTickLineStyle = lineStyle;
    axisSet.yAxis.axisLineStyle = lineStyle;
    axisSet.yAxis.minorTickLength = 5.0f;
    axisSet.yAxis.majorTickLength = 7.0f;
    
    
}

@end

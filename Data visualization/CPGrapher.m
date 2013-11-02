//
//  CPGrapher.m
//  Data visualization
//
//  Created by Kevin Fernandes on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import "CPGrapher.h"

@implementation CPGrapher
@synthesize graph;


//getter for the number of data points on the plot
-(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot{
    return 10;
}
-(NSArray *)numbersForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
          recordIndexRange:(NSRange)indexRange{
    return NULL;
}

-(NSNumber *)numberForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
               recordIndex:(NSUInteger)index{
    return NULL;
}

-(NSRange)recordIndexRangeForPlot:(CPTPlot *)plot
                        plotRange:(CPTPlotRange *)plotRect{
    NSRange *dummy = NULL;
    return *dummy;
}



@end

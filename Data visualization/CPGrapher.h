//
//  CPGrapher.h
//  Data visualization
//
//  Created by Kevin Fernandes on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPGrapher : NSObject <CPTPlotDataSource>
@property (strong, atomic) CPTXYGraph *graph;

//CPTPlotDataSource Protocol Methods to implment
-(NSUInteger)numberOfRecordsForPlot:(CPTPlot *)plot;

-(NSArray *)numbersForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
          recordIndexRange:(NSRange)indexRange;

-(NSNumber *)numberForPlot:(CPTPlot *)plot
                     field:(NSUInteger)fieldEnum
               recordIndex:(NSUInteger)index;

-(NSRange)recordIndexRangeForPlot:(CPTPlot *)plot
                        plotRange:(CPTPlotRange *)plotRect;

@end

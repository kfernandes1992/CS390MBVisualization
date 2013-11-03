//
//  CPTGraphView.h
//  Data visualization
//
//  Created by Kevin Fernandes on 11/2/13.
//  Copyright (c) 2013 Erik Risinger. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CPTGraphView : CPTGraphHostingView
@property (nonatomic, strong) CPTXYGraph* graph;
@end

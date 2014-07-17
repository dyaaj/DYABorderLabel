//
//  DYABorderLabel.m
//  DYABorderLabel
//
//  Created by David Yang on 17/07/2014.
//  Copyright (c) 2014 david. All rights reserved.
//

#import "DYABorderLabel.h"

@interface DYABorderLabel ()
@property (strong, nonatomic) CAShapeLayer *borderLayer;
@end

@implementation DYABorderLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    self.borderColor = self.borderColor ?: self.textColor;
    self.borderWidth = self.borderWidth > 0 ? self.borderWidth : 1;
    self.dashedBorderPattern = self.dashedBorderPattern ?: @[@2, @1, @4, @1];
    
    if (self.borderType == DYABorderTypeSolid) {
        self.layer.borderColor = self.borderColor.CGColor;
        self.layer.borderWidth = self.borderWidth;
    }
    else if (self.borderType == DYABorderTypeDashed) {
        if (self.borderLayer == nil) {
            self.borderLayer = [CAShapeLayer layer];
        }
        self.borderLayer.frame = self.bounds;
        self.borderLayer.path = [UIBezierPath bezierPathWithRect:self.bounds].CGPath;
        self.borderLayer.fillColor = nil;
        self.borderLayer.strokeColor = self.borderColor.CGColor;
        self.borderLayer.lineWidth = self.borderWidth;
        self.borderLayer.lineDashPattern = self.dashedBorderPattern;
        [self.layer addSublayer:self.borderLayer];
    }
}

@end

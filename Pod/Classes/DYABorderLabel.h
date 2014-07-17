//
//  DYABorderLabel.h
//  DYABorderLabel
//
//  Created by David Yang on 17/07/2014.
//  Copyright (c) 2014 david. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    DYABorderTypeNone = 0,
    DYABorderTypeSolid,
    DYABorderTypeDashed
} DYABorderType;

@interface DYABorderLabel : UILabel

@property (nonatomic) DYABorderType borderType;
@property (nonatomic) UIColor *borderColor;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) NSArray *dashedBorderPattern;

@end

//
//  DYAViewController.m
//  DYABorderLabel
//
//  Created by david on 07/17/2014.
//  Copyright (c) 2014 david. All rights reserved.
//

#import "DYAViewController.h"
#import "DYABorderLabel/DYABorderLabel.h"

@interface DYAViewController ()

@end

@implementation DYAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    DYABorderLabel *label = [[DYABorderLabel alloc] initWithFrame:CGRectMake(0, 0, 260, 70)];
    label.font = [UIFont systemFontOfSize:40.];
    label.text = @"Hello world !";
    label.textAlignment = NSTextAlignmentCenter;
    
    label.borderType = DYABorderTypeDashed;
    label.borderWidth = 3.;
    label.borderColor = [UIColor redColor];
    label.dashedBorderPattern = @[@5, @2, @6, @2];
    
    [label sizeToFit];
    label.center = CGPointMake(self.view.frame.size.width/2., self.view.frame.size.height/2.);
    [self.view addSubview:label];
    
    label.frame = CGRectMake(0, 0, 260, 70);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

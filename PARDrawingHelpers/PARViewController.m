//
//  PARViewController.m
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 2/11/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import "PARViewController.h"
#import "UIView+DrawingHelpers.h"

@interface PARViewController ()

@end

@implementation PARViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BOOL isiPad = [UIView isiPad];
    if (isiPad)
    {
        BOOL isPortrait = [UIView isPortrait];
        NSLog(@"view bounds %@.", NSStringFromCGRect([UIView iPadBounds:!isPortrait]));
    }
    
    if ([UIView isiPhone])
    {
        // iPhone device tests
        NSLog(@"main screen bounds %@", NSStringFromCGRect([[UIScreen mainScreen] bounds]));
        NSLog(@"is iPhone 3_5 inch %d", [UIView isRetina3_5Inch]);
        NSLog(@"is iPhone 4 inch %d", [UIView isRetina4Inch]);
        NSLog(@"is iPhone 4_7 inch %d", [UIView isRetina4_7Inch]);
        NSLog(@"is iPhone 5_5 inch %d", [UIView isRetina5_5Inch]);
    }
    
    // test os versions
    NSLog(@"iOS 7> - %d, iOS 8> - %d, iOS 9> - %d", [UIView iOS7AndLater], [UIView iOS8AndLater], [UIView iOS9AndLater]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

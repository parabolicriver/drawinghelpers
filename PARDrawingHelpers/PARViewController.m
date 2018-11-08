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
        
        if ([UIView isiPadPro12_9])
        {
            NSLog(@"ipad pro 12.9 window bounds %@", NSStringFromCGRect([[UIScreen mainScreen] bounds]));
            if ([UIView isPortraitFromStatusBar])
            {
                NSLog(@"ipad pro 12.9 ideal bounds %@", NSStringFromCGRect([UIView iPadPro12_9Bounds:NO]));
            }
            else
            {
                NSLog(@"ipad pro 12.9 ideal bounds %@", NSStringFromCGRect([UIView iPadPro12_9Bounds:YES]));
            }
        }
    }
    
    if ([UIView isiPhone])
    {
        // actual data
        if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)])
        {
            NSLog(@"main screen scale %f", [[UIScreen mainScreen] scale]);
        }
        NSLog(@"main screen bounds %@", NSStringFromCGRect([[UIScreen mainScreen] bounds]));
        
        // iPhone device tests
        NSLog(@"is iPhone 3_5 inch %d", [UIView isRetina3_5Inch]);
        NSLog(@"is iPhone 4 inch %d", [UIView isRetina4Inch]);
        NSLog(@"is iPhone 4_7 inch %d", [UIView isRetina4_7Inch]);
        NSLog(@"is iPhone 5_5 inch %d", [UIView isRetina5_5Inch]);
        NSLog(@"is iPhone 5_8 inch %d", [UIView isRetina5_8Inch]);
        NSLog(@"is iPhone 6_1 inch %d", [UIView isRetina6_1Inch]);
        NSLog(@"is iPhone 6_5 inch %d", [UIView isRetina6_5Inch]);
    }
    
    // test os versions
    NSLog(@"iOS 7> %d, iOS 8> %d, iOS 9> %d, iOS 10> %d, iOS 11> %d, iOS 12> %d", [UIView iOS7AndLater], [UIView iOS8AndLater], [UIView iOS9AndLater], [UIView iOS10AndLater], [UIView iOS11AndLater], [UIView iOS12AndLater]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

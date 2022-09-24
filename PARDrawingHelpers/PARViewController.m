//
//  PARViewController.m
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 2/11/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import "PARViewController.h"
#import "UIView+DrawingHelpers.h"
#import "PARDrawingHelpers-Swift.h"

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
        NSLog(@"test view bounds for iPad %@.", NSStringFromCGRect([UIView iPadBounds:!isPortrait]));
        
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
        NSLog(@"is iPad Pro 12.9 inch %d", [UIView isiPadPro12_9]);
        NSLog(@"is iPad Pro 10.5 inch %d", [UIView isiPadPro10_5]);
        NSLog(@"is iPad Pro 11 inch %d", [UIView isiPadPro11]);
        
        // new swift based ipad helpers

        NSLog(@"iPad 9.7 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina9_7Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina9_7BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 8.3 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina8_3Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina8_3BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 10.2 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina10_2Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina10_2BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 10.5 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina10_5Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina10_5BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 10.9 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina10_9Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina10_9BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 11.0 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina11Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina11BoundsWithLandscape:YES]));
        
        NSLog(@"iPad 12.9 - is %d, screen bounds %@, calculated landscape screen bounds %@", [UIView isiPadRetina12_9Inch],  NSStringFromCGRect(UIScreen.mainScreen.bounds), NSStringFromCGRect([UIView iPadRetina12_9BoundsWithLandscape:YES]));
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
        NSLog(@"is iPhone 3.5 inch %d", [UIView isRetina3_5Inch]);
        NSLog(@"is iPhone 4 inch %d", [UIView isRetina4Inch]);
        NSLog(@"is iPhone 4.7 inch %d", [UIView isRetina4_7Inch]);
        NSLog(@"is iPhone 5.5 inch %d", [UIView isRetina5_5Inch]);
        NSLog(@"is iPhone 5.8 inch %d", [UIView isRetina5_8Inch]);
        NSLog(@"is iPhone 6.1 inch %d", [UIView isRetina6_1Inch]);
        NSLog(@"is iPhone 6.5 inch %d", [UIView isRetina6_5Inch]);        
        
        // iPhone 12 and 13 tests (from swift)
        NSLog(@"is landscape %d", [UIView isLandscape]);
        NSLog(@"is iPhone 5.42 inch %d", [UIView isRetina5_42Inch]);
        NSLog(@"is iPhone 6.06 inch %d", [UIView isRetina6_06Inch]);
        NSLog(@"is iPhone 6.68 inch %d", [UIView isRetina6_68Inch]);
        if ([UIView isRetina5_42Inch])
            NSLog(@"iPhone 5.42 inch screen bounds %@", NSStringFromCGRect([UIView iPhoneRetina5_42BoundsWithLandscape:([UIView isLandscape])]));
        if ([UIView isRetina6_06Inch])
            NSLog(@"iPhone 6.06 inch screen bounds %@", NSStringFromCGRect([UIView iPhoneRetina6_06BoundsWithLandscape:([UIView isLandscape])]));
        if ([UIView isRetina6_68Inch])
            NSLog(@"iPhone 6.68 inch screen bounds %@", NSStringFromCGRect([UIView iPhoneRetina6_68BoundsWithLandscape:([UIView isLandscape])]));
        
        // iPhone display zoom tests
        NSLog(@"is iPhone DZ1 inch %d", [UIView isRetinaDZ1Inch]);
        if ([UIView isRetinaDZ1Inch])
            NSLog(@"iPhone DZ1 inch screen bounds %@", NSStringFromCGRect([UIView iPhoneRetinaDZ1BoundsWithLandscape:([UIView isLandscape])]));
    }
    
    // actual pixel size and scaling
    CGRect sizeInPixels = [[UIScreen mainScreen] nativeBounds];
    CGRect sizeInPoints = [[UIScreen mainScreen] bounds];
    CGFloat reportedScale = [[UIScreen mainScreen] scale];
    CGFloat actualScale = sizeInPixels.size.width / sizeInPoints.size.width;
    NSLog(@"reported scale %f, actual scale %f, size in pixels %@", reportedScale, actualScale, NSStringFromCGRect(sizeInPixels));
    
    // test os versions
    NSLog(@"iOS 7> %d, iOS 8> %d, iOS 9> %d, iOS 10> %d, iOS 11> %d, iOS 12> %d, iOS 13> %d", [UIView iOS7AndLater], [UIView iOS8AndLater], [UIView iOS9AndLater], [UIView iOS10AndLater], [UIView iOS11AndLater], [UIView iOS12AndLater], [UIView iOS13AndLater]);
    
    // test os versions from swift
    NSLog(@"iOS 14> %d, iOS 15> %d, iOS 16> %d", [UIView iOS14AndLater], [UIView iOS15AndLater], [UIView iOS16AndLater]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

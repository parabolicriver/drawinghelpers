//
//  UIView+DrawingHelpers.m
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 1/27/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import "UIView+DrawingHelpers.h"

@implementation UIView (DrawingHelpers)

#pragma mark - iOS Versions

+ (BOOL)iOS7AndLater
{    
    if (floor(NSFoundationVersionNumber) <= NSFoundationVersionNumber_iOS_6_1)
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

#pragma mark - Screen Properties

+ (BOOL)isiPhone
{
    UIDevice *device = [UIDevice currentDevice];
    UIUserInterfaceIdiom type = [device userInterfaceIdiom];
    
    if (type == UIUserInterfaceIdiomPhone)
    {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isRetinaiPhone
{
    if ([UIView isiPhone])
    {
        if (([[UIScreen mainScreen] respondsToSelector:@selector(scale)] == YES && [[UIScreen mainScreen] scale] == 2.00))
        {
            return YES;
        }
        // iPhone 6 plus renders @3x
        else if (([[UIScreen mainScreen] respondsToSelector:@selector(scale)] == YES && [[UIScreen mainScreen] scale] == 3.00))
        {
            return YES;
        }
    }
    
    return NO;
}

+ (BOOL)isRetina3_5Inch
{
    if ([UIView isRetinaiPhone])
    {
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if (screenBounds.size.height == 480.0f && screenBounds.size.width == 320.0f)
        {
            return YES;
        }
    }
    
    return NO;
}

+ (BOOL)isRetina4Inch
{
    if ([UIView isRetinaiPhone])
    {
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if (screenBounds.size.height == 568.0f && screenBounds.size.width == 320.0f)
        {
            return YES;
        }
    }

    return NO;
}

+ (BOOL)isRetina4_7Inch
{
    if ([UIView isRetinaiPhone])
    {
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if (screenBounds.size.height == 667.0f && screenBounds.size.width == 375.0f)
        {
            return YES;
        }
    }
    
    return NO;
}

+ (BOOL)isRetina5_5Inch
{
    if ([UIView isRetinaiPhone])
    {
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if (screenBounds.size.height == 736.0f && screenBounds.size.width == 414.0f)
        {
            return YES;
        }
    }
    
    return NO;
}

+ (BOOL)isiPad
{
    UIDevice *device = [UIDevice currentDevice];
    UIUserInterfaceIdiom type = [device userInterfaceIdiom];
    
    if (type == UIUserInterfaceIdiomPad)
    {
        return YES;
    }

    return NO;
}

+ (BOOL)isRetinaiPad
{
    if ([UIView isiPad])
    {
        if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)] == YES && [[UIScreen mainScreen] scale] == 2.00)
        {
            return YES;
        }
    }
    
    return NO;
}

+ (UIDeviceOrientation)deviceOrientation
{
    return [[UIDevice currentDevice] orientation];
}

+ (UIInterfaceOrientation)interfaceOrientation
{
    return [[UIApplication sharedApplication] statusBarOrientation];
}

+ (BOOL)isPortrait
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown)
    {
        return YES;
    }
    else if (orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)
    {
        return NO;
    }
    // for all other cases assume portrait
    else
    {
        return YES;
    }
}

+ (BOOL)isPortraitUpsideDown
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    return (orientation == UIDeviceOrientationPortraitUpsideDown);
}

+ (BOOL)isLandscape
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    if (orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)
    {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isLandscapeLeft
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    return (orientation == UIDeviceOrientationLandscapeLeft);
}

+ (BOOL)isLandscapeRight
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    return (orientation == UIDeviceOrientationLandscapeRight);
}

+ (BOOL)isPortraitFromStatusBar
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationPortrait || orientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        return YES;
    }
    else if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight)
    {
        return NO;
    }
    // for all other cases assume portrait
    else
    {
        return YES;
    }
}

+ (BOOL)isPortraitUpsideDownFromStatusBar
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    return (orientation == UIInterfaceOrientationPortraitUpsideDown);
}

+ (BOOL)isLandscapeFromStatusBar
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight)
    {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isLandscapeLeftFromStatusBar
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    return (orientation == UIInterfaceOrientationLandscapeLeft);
}

+ (BOOL)isLandscapeRightFromStatusBar
{
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    return (orientation == UIInterfaceOrientationLandscapeRight);
}

+ (NSString *)stringFromDeviceOrientation:(UIDeviceOrientation)orientation
{
    if (orientation == UIDeviceOrientationPortrait)
    {
        return @"UIDeviceOrientationPortrait";
    }
    else if (orientation == UIDeviceOrientationPortraitUpsideDown)
    {
        return @"UIDeviceOrientationPortraitUpsideDown";
    }
    else if (orientation == UIDeviceOrientationLandscapeLeft)
    {
        return @"UIDeviceOrientationLandscapeLeft";
    }
    else if (orientation == UIDeviceOrientationLandscapeRight)
    {
        return @"UIDeviceOrientationLandscapeRight";
    }
    else if (orientation == UIDeviceOrientationFaceUp)
    {
        return @"UIDeviceOrientationFaceUp";
    }
    else if (orientation == UIDeviceOrientationFaceDown)
    {
        return @"UIDeviceOrientationFaceDown";
    }
    
    // otherwise unknow i guess
    return @"UIDeviceOrientationUnknown";
}

+ (NSString *)stringFromInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if (orientation == UIInterfaceOrientationPortrait)
    {
        return @"UIInterfaceOrientationPortrait";
    }
    else if (orientation == UIInterfaceOrientationPortraitUpsideDown)
    {
        return @"UIInterfaceOrientationPortraitUpsideDown";
    }
    else if (orientation == UIInterfaceOrientationLandscapeLeft)
    {
        return @"UIInterfaceOrientationLandscapeLeft";
    }
    else if (orientation == UIInterfaceOrientationLandscapeRight)
    {
        return @"UIInterfaceOrientationLandscapeRight";
    }

    // assume portrait in all other cases
    return @"UIInterfaceOrientationPortrait";
}

+ (UIInterfaceOrientation)interfaceOrientationFromDeviceOrientation:(UIDeviceOrientation)deviceOrientation
{
    if (deviceOrientation == UIDeviceOrientationPortrait)
    {
        return UIInterfaceOrientationPortrait;
    }
    else if (deviceOrientation == UIDeviceOrientationPortraitUpsideDown)
    {
        return UIInterfaceOrientationPortraitUpsideDown;
    }
    else if (deviceOrientation == UIDeviceOrientationLandscapeRight)
    {
        return UIInterfaceOrientationLandscapeLeft;
    }
    else if (deviceOrientation == UIDeviceOrientationLandscapeLeft)
    {
        return UIInterfaceOrientationLandscapeRight;
    }
    
    // assume portrait in all other cases
    return UIInterfaceOrientationPortrait;
}

#pragma mark - iPhone Sizes

+ (CGFloat)iPhoneWidth:(BOOL)landscape
{
    if (landscape)
    {
        return 480.0f;
    }
    else
    {
        return 320.0f;
    }
}

+ (CGFloat)iPhoneHeight:(BOOL)landscape
{
    if (landscape)
    {
        return 320.0f;
    }
    else
    {
        return 480.0f;
    }
}

+ (CGFloat)iPhoneRetina4Width:(BOOL)landscape
{
    if (landscape)
    {
        return 568.0f;
    }
    else
    {
        return 320.0f;
    }
}

+ (CGFloat)iPhoneRetina4Height:(BOOL)landscape
{
    if (landscape)
    {
        return 320.0f;
    }
    else
    {
        return 568.0f;
    }
}

+ (CGSize)iPhoneScreenSize:(BOOL)landscape
{
    return CGSizeMake([UIView iPhoneWidth:landscape], [UIView iPhoneHeight:landscape]);
}

+ (CGSize)iPhoneRetina4ScreenSize:(BOOL)landscape
{
    return CGSizeMake([UIView iPhoneRetina4Width:landscape], [UIView iPhoneRetina4Height:landscape]);
}

+ (CGRect)iPhoneBounds:(BOOL)landscape
{
    return CGRectMake(0.0f, 0.0f, [UIView iPhoneWidth:landscape], [UIView iPhoneHeight:landscape]);
}

+ (CGRect)iPhoneRetina4Bounds:(BOOL)landscape
{
    return CGRectMake(0.0f, 0.0f, [UIView iPhoneRetina4Width:landscape], [UIView iPhoneRetina4Height:landscape]);
}

+ (CGFloat)iPhoneStatusBarHeight
{
    return 20.0f;
}

+ (CGFloat)iPhoneNavigationBarHeight:(BOOL)landscape
{
    if (!landscape)
    {
        return 44.0f;
    }
    else
    {
        return 32.0f;
    }
}

+ (CGFloat)iPhoneToolbarHeight
{
    return 44.0f;
}

+ (CGFloat)iPhoneTabBarHeight
{
    return 49.0f;
}

#pragma mark - iPad Sizes

+ (CGFloat)iPadWidth:(BOOL)landscape
{
    if (!landscape)
    {
        return 768.0f;
    }
    else
    {
        return 1024.0f;
    }
}

+ (CGFloat)iPadHeight:(BOOL)landscape
{
    if (!landscape)
    {
        return 1024.0f;
    }
    else
    {
        return 768.0f;
    }
}

+ (CGSize)iPadScreenSize:(BOOL)landscape
{
    return CGSizeMake([UIView iPadWidth:landscape], [UIView iPadHeight:landscape]);
}

+ (CGRect)iPadBounds:(BOOL)landscape
{
    return CGRectMake(0.0f, 0.0f, [UIView iPadWidth:landscape], [UIView iPadHeight:landscape]);
}

+ (CGFloat)iPadStatusBarHeight
{
    return 20.0f;
}

+ (CGFloat)iPadNavigationBarHeight
{
    return 44.0f;
}

+ (CGFloat)iPadToolbarHeight
{
    return 44.0f;
}

+ (CGFloat)iPadTabBarHeight
{
    return 49.0f;
}

#pragma mark - Responder Helpers

+ (CGSize)iPhoneKeyboardSize:(BOOL)landscape
{
    CGSize keyboardSize = CGSizeMake(0.0f, 0.0f);
    
    if (landscape)
    {
        keyboardSize = CGSizeMake([UIView iPhoneHeight:landscape], 162.0f);
    }
    else
    {
        keyboardSize = CGSizeMake([UIView iPhoneWidth:landscape], 216.0f);
    }
    
    return keyboardSize;
}

+ (CGSize)iPadKeyboardSize:(BOOL)landscape
{
    CGSize keyboardSize = CGSizeMake(0.0f, 0.0f);
    
    if (landscape)
    {
        keyboardSize = CGSizeMake([UIView iPadWidth:landscape], 352.0f);
    }
    else
    {
        keyboardSize = CGSizeMake([UIView iPadWidth:landscape], 264.0f);
    }
    
    return keyboardSize;
}

+ (UIColor *)backgroundColorForKeyboardAppearance:(UIKeyboardAppearance)appearance
{
    UIColor *bgColor = nil;
    
    if (appearance == UIKeyboardAppearanceLight)
    {
        bgColor = [UIColor colorWithRed:208/255.0f green:207/255.0f blue:210/255.0f alpha:1.0f];
    }
    else if (appearance == UIKeyboardAppearanceDark)
    {
        bgColor = [UIColor colorWithRed:79/255.0f green:79/255.0f blue:79/255.0f alpha:1.0f];
    }
    
    return bgColor;
}

@end

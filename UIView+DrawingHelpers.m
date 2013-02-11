//
//  UIView+DrawingHelpers.m
//  HIIT Stopwatch
//
//  Created by Anuj Seth on 1/27/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import "UIView+DrawingHelpers.h"

@implementation UIView (DrawingHelpers)

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
    }
    
    return NO;
}

+ (BOOL)isRetina4Inch
{
    if ([UIView isiPhone])
    {
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        if (screenBounds.size.height == 568.0f || screenBounds.size.width == 568.0f)
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

+ (BOOL)isPortrait
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    if (orientation == UIDeviceOrientationPortrait || orientation == UIDeviceOrientationPortraitUpsideDown)
    {
        return YES;
    }
    else if (orientation == UIDeviceOrientationLandscapeLeft || orientation == UIDeviceOrientationLandscapeRight)
    {
        return YES;
    }
    // for all other cases assume portrait
    else
    {
        return YES;
    }
}

+ (NSString *)stringFromOrientation:(UIInterfaceOrientation)orientation
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

#pragma mark - iPhone Sizes

+ (CGFloat)iPhoneWidth
{
    return 320.0f;
}

+ (CGFloat)iPhoneHeight
{
    return 480.0f;
}

+ (CGFloat)iPhoneRetina4Width
{
    return 320.0f;
}

+ (CGFloat)iPhoneRetina4Height
{
    return 568.0f;
}

+ (CGSize)iPhoneScreenSize
{
    return CGSizeMake([UIView iPhoneWidth], [UIView iPhoneHeight]);
}

+ (CGSize)iPhoneRetina4ScreenSize
{
    return CGSizeMake([UIView iPhoneRetina4Width], [UIView iPhoneRetina4Height]);
}

+ (CGRect)iPhoneBounds
{
    return CGRectMake(0.0f, 0.0f, [UIView iPhoneWidth], [UIView iPhoneHeight]);
}

+ (CGRect)iPhoneRetina4Bounds
{
    return CGRectMake(0.0f, 0.0f, [UIView iPhoneRetina4Width], [UIView iPhoneRetina4Height]);
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

@end

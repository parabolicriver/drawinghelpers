//
//  UIView+DrawingHelpers.h
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 1/27/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import <UIKit/UIKit.h>

// Helpers for drawing views from code.
@interface UIView (DrawingHelpers)

/** iOS versions **/

+ (BOOL)iOS7AndLater;               // will return NO for iOS 6 etc.

/** Screen properties. **/

+ (BOOL)isiPhone;                   // any iPhone
+ (BOOL)isRetinaiPhone;             // any retina iPhone
+ (BOOL)isRetina3_5Inch;            // iPhone 4, 4S
+ (BOOL)isRetina4Inch;              // iPhone 5, 5C, 5S
+ (BOOL)isRetina4_7Inch;            // iPhone 6
+ (BOOL)isRetina5_5Inch;            // iPhone 6 Plus
+ (BOOL)isiPad;
+ (BOOL)isRetinaiPad;
+ (UIDeviceOrientation)deviceOrientation;
+ (UIInterfaceOrientation)interfaceOrientation;
+ (BOOL)isPortrait;                 // check using UIDevice, device orientation checks
+ (BOOL)isPortraitUpsideDown;
+ (BOOL)isLandscape;
+ (BOOL)isLandscapeLeft;
+ (BOOL)isLandscapeRight;
+ (BOOL)isPortraitFromStatusBar;    // check using UIApplication, interface orientation checks
+ (BOOL)isPortraitUpsideDownFromStatusBar;
+ (BOOL)isLandscapeFromStatusBar;
+ (BOOL)isLandscapeLeftFromStatusBar;
+ (BOOL)isLandscapeRightFromStatusBar;
+ (NSString *)stringFromDeviceOrientation:(UIDeviceOrientation)orientation;
+ (NSString *)stringFromInterfaceOrientation:(UIInterfaceOrientation)orientation;
// corresponding interface orientation for the device in the ideal case,
// the actual interface orientation might be different for e.g. when
// stock rotation is disabled
+ (UIInterfaceOrientation)interfaceOrientationFromDeviceOrientation:(UIDeviceOrientation)deviceOrientation;

/** iPhone Sizes. **/

// All sizes in points.

// older non-retina iPhones
+ (CGFloat)iPhoneWidth:(BOOL)landscape;
+ (CGFloat)iPhoneHeight:(BOOL)landscape;
+ (CGSize)iPhoneScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneBounds:(BOOL)landscape;

// iPhone 4, 4S
+ (CGFloat)iPhoneRetina3_5Width:(BOOL)landscape;
+ (CGFloat)iPhoneRetina3_5Height:(BOOL)landscape;
+ (CGSize)iPhoneRetina3_5ScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneRetina3_5Bounds:(BOOL)landscape;

// iPhone 5, 5C, 5S
+ (CGFloat)iPhoneRetina4Width:(BOOL)landscape;
+ (CGFloat)iPhoneRetina4Height:(BOOL)landscape;
+ (CGSize)iPhoneRetina4ScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneRetina4Bounds:(BOOL)landscape;

// iPhone 6
+ (CGFloat)iPhoneRetina4_7Width:(BOOL)landscape;
+ (CGFloat)iPhoneRetina4_7Height:(BOOL)landscape;
+ (CGSize)iPhoneRetina4_7ScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneRetina4_7Bounds:(BOOL)landscape;

// iPhone 6 Plus
+ (CGFloat)iPhoneRetina5_5Width:(BOOL)landscape;
+ (CGFloat)iPhoneRetina5_5Height:(BOOL)landscape;
+ (CGSize)iPhoneRetina5_5ScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneRetina5_5Bounds:(BOOL)landscape;

// ui kit elements depending on iPhone
+ (CGFloat)iPhoneStatusBarHeight;
+ (CGFloat)iPhoneNavigationBarHeight:(BOOL)landscape;
+ (CGFloat)iPhoneToolbarHeight;
+ (CGFloat)iPhoneTabBarHeight;

/** iPad Sizes. **/

+ (CGFloat)iPadWidth:(BOOL)landscape;
+ (CGFloat)iPadHeight:(BOOL)landscape;
+ (CGSize)iPadScreenSize:(BOOL)landscape;
+ (CGRect)iPadBounds:(BOOL)landscape;

+ (CGFloat)iPadStatusBarHeight;
+ (CGFloat)iPadNavigationBarHeight;
+ (CGFloat)iPadToolbarHeight;
+ (CGFloat)iPadTabBarHeight;

/** Responder helpers. **/

/*
 * Note:
 * Tested with English default keyboards only.
 */

// Always return the correct value in the height, i.e
// unlike the keyboard notifications we don't flip values.
+ (CGSize)iPhoneKeyboardSize:(BOOL)landscape;
+ (CGSize)iPadKeyboardSize:(BOOL)landscape;
+ (UIColor *)backgroundColorForKeyboardAppearance:(UIKeyboardAppearance)appearance;     // approximate 

@end

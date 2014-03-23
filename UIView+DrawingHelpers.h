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

+ (BOOL)isiPhone;
+ (BOOL)isRetinaiPhone;
+ (BOOL)isRetina4Inch;
+ (BOOL)isiPad;
+ (BOOL)isRetinaiPad;
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
+ (NSString *)stringFromOrientation:(UIInterfaceOrientation)orientation;

/** iPhone Sizes. **/

// All sizes in points.

+ (CGFloat)iPhoneWidth:(BOOL)landscape;
+ (CGFloat)iPhoneHeight:(BOOL)landscape;
+ (CGFloat)iPhoneRetina4Width:(BOOL)landscape;
+ (CGFloat)iPhoneRetina4Height:(BOOL)landscape;
+ (CGSize)iPhoneScreenSize:(BOOL)landscape;
+ (CGSize)iPhoneRetina4ScreenSize:(BOOL)landscape;
+ (CGRect)iPhoneBounds:(BOOL)landscape;
+ (CGRect)iPhoneRetina4Bounds:(BOOL)landscape;

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

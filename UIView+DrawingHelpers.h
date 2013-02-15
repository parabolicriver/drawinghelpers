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

/** Screen properties. **/

+ (BOOL)isiPhone;
+ (BOOL)isRetinaiPhone;
+ (BOOL)isRetina4Inch;
+ (BOOL)isiPad;
+ (BOOL)isRetinaiPad;
+ (BOOL)isPortrait;
+ (NSString *)stringFromOrientation:(UIInterfaceOrientation)orientation;

// All sizes in points.

/** iPhone Sizes. **/

+ (CGFloat)iPhoneWidth;
+ (CGFloat)iPhoneHeight;
+ (CGFloat)iPhoneRetina4Width;
+ (CGFloat)iPhoneRetina4Height;
+ (CGSize)iPhoneScreenSize;
+ (CGSize)iPhoneRetina4ScreenSize;
+ (CGRect)iPhoneBounds;
+ (CGRect)iPhoneRetina4Bounds;

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

@end

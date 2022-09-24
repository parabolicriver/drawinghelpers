//
//  UIViewDrawingHelpers.swift
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 24/09/21.
//  Copyright © 2021 Parabolic River. All rights reserved.
//

import Foundation
import UIKit

// Helpers for drawing views from code. Pre
// iOS 13 helpers are in UIView+DrawingHelpers.h
@objc extension UIView {
    
    /** iOS versions **/
    
    class func iOS14AndLater() -> Bool {
        if let iOSVersion = Float(UIDevice.current.systemVersion) {
            return iOSVersion >= 14.0
        }
        
        return false;
    }
    
    class func iOS15AndLater() -> Bool {
        if let iOSVersion = Float(UIDevice.current.systemVersion) {
            return iOSVersion >= 15.0
        }
        
        return false;
    }
    
    class func iOS16AndLater() -> Bool {
        if let iOSVersion = Float(UIDevice.current.systemVersion) {
            return iOSVersion >= 16.0
        }
        
        return false;
    }
    
    /** iPhones **/
    
    // iPhone 12 mini, 13 mini (however this size is
    // same as isRetina5_8Inch i.e. iPhone X, XS and 11 Pro
    // in terms of points and reported scale (but not pixels!)
    // so these methods for this size are sort of redundant)    
    
    fileprivate static let kiPhoneRetina5_42Width = 375.0
    fileprivate static let kiPhoneRetina5_42Height = 812.0
    
    class func iPhoneRetina5_42Width(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina5_42Height
        } else {
            return kiPhoneRetina5_42Width
        }
    }
    
    class func iPhoneRetina5_42Height(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina5_42Width
        } else {
            return kiPhoneRetina5_42Height
        }
    }
    
    class func iPhoneRetina5_42ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPhoneRetina5_42Width(landscape: landscape), height: iPhoneRetina5_42Height(landscape: landscape));
    }
    
    class func iPhoneRetina5_42Bounds(landscape: Bool) -> CGRect {
        let size = iPhoneRetina5_42ScreenSize(landscape: landscape)
        return CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height);
    }
    
    class func isRetina5_42Inch() -> Bool {
        var isScale3 = false
        var widthAndHeightMatch = false
        
        if (UIView.isRetinaiPhone()) {
            if (UIScreen.main.scale == 3.0) { isScale3 = true }
            
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPhoneRetina5_42Height && screenBounds.size.width == kiPhoneRetina5_42Width) ||
                (screenBounds.size.height == kiPhoneRetina5_42Width && screenBounds.size.width == kiPhoneRetina5_42Height)) {
                widthAndHeightMatch = true;
            }
        }
        
        return isScale3 && widthAndHeightMatch;
    }
            
    // iPhone 12, 12 Pro, 13, 13 Pro
    
    fileprivate static let kiPhoneRetina6_06Width = 390.0
    fileprivate static let kiPhoneRetina6_06Height = 844.0
    
    class func iPhoneRetina6_06Width(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina6_06Height
        } else {
            return kiPhoneRetina6_06Width
        }
    }
    
    class func iPhoneRetina6_06Height(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina6_06Width
        } else {
            return kiPhoneRetina6_06Height
        }
    }
    
    class func iPhoneRetina6_06ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPhoneRetina6_06Width(landscape: landscape), height: iPhoneRetina6_06Height(landscape: landscape));
    }
    
    class func iPhoneRetina6_06Bounds(landscape: Bool) -> CGRect {
        let size = iPhoneRetina6_06ScreenSize(landscape: landscape)
        return CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height);
    }
    
    class func isRetina6_06Inch() -> Bool {
        var isScale3 = false
        var widthAndHeightMatch = false
        
        if (UIView.isRetinaiPhone()) {
            if (UIScreen.main.scale == 3.0) { isScale3 = true }
            
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPhoneRetina6_06Height && screenBounds.size.width == kiPhoneRetina6_06Width) ||
                (screenBounds.size.height == kiPhoneRetina6_06Width && screenBounds.size.width == kiPhoneRetina6_06Height)) {
                widthAndHeightMatch = true;
            }
        }
        
        return isScale3 && widthAndHeightMatch;
    }
    
    // iPhone 12 Pro Max, 13 Pro Max
    
    fileprivate static let kiPhoneRetina6_68Width = 428.0
    fileprivate static let kiPhoneRetina6_68Height = 926.0
    
    class func iPhoneRetina6_68Width(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina6_68Height
        } else {
            return kiPhoneRetina6_68Width
        }
    }
    
    class func iPhoneRetina6_68Height(landscape: Bool) -> CGFloat {
        if (landscape) {
            return kiPhoneRetina6_68Width
        } else {
            return kiPhoneRetina6_68Height
        }
    }
    
    class func iPhoneRetina6_68ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPhoneRetina6_68Width(landscape: landscape), height: iPhoneRetina6_68Height(landscape: landscape));
    }
    
    class func iPhoneRetina6_68Bounds(landscape: Bool) -> CGRect {
        let size = iPhoneRetina6_68ScreenSize(landscape: landscape)
        return CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height);
    }
    
    class func isRetina6_68Inch() -> Bool {
        var isScale3 = false
        var widthAndHeightMatch = false
        
        if (UIView.isRetinaiPhone()) {
            if (UIScreen.main.scale == 3.0) { isScale3 = true }
            
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPhoneRetina6_68Height && screenBounds.size.width == kiPhoneRetina6_68Width) ||
                (screenBounds.size.height == kiPhoneRetina6_68Width && screenBounds.size.width == kiPhoneRetina6_68Height)) {
                widthAndHeightMatch = true;
            }
        }
        
        return isScale3 && widthAndHeightMatch;
    }
    
    /** iPhones Display Zoomed **/
    
    // iPhones with Display Zoom turned on return a different size.
    // The following devices have Display Zoom support starting iOS 14:
    // iPhone 6s, iPhone 6s Plus, iPhone 7, iPhone 7 Plus, iPhone 8, iPhone 8 Plus,
    // iPhone X, iPhone Xs, iPhone Xs Max, iPhone XR, iPhone 11, iPhone 11 Pro, iPhone 11 Pro Max,
    // iPhone SE (2nd gen), iPhone 12, iPhone 12 Pro, iPhone 12 Pro Max, iPhone 12 mini,
    // iPhone 13, iPhone 13 Pro, iPhone 13 Pro Max, iPhone 13 mini.
    
    /*
     
     Display Zoom sizes:
     
     iPhone 6s, iPhone 7, iPhone 8, iPhone SE (2nd gen)
     4.7 inch - normal - {{0, 0}, {375, 667}}
     4.7 inch - zoomed - {{0, 0}, {320, 568}} - becomes same as 4 inch

     iPhone 6s Plus, iPhone 7 Plus, iPhone 8 Plus
     5.5 inch - normal - {{0, 0}, {414, 736}}
     5.5 inch - zoomed - {{0, 0}, {375, 667}} - becomes same as 4.7 inch

     iPhone X, iPhone Xs, iPhone 11 Pro, iPhone 12 mini, iPhone 13 mini
     5.8 inch (5.42 inch) - normal - {{0, 0}, {375, 812}}
     5.8 inch (5.42 inch) - zoomed - {{0, 0}, {320, 693}} - new zoomed size

     iPhone XR, iPhone Xs Max, iPhone 11, iPhone 11 Pro Max
     6.1 inch - normal - {{0, 0}, {414, 896}}
     6.1 inch - zoomed - {{0, 0}, {375, 812}} - becomes same as 5.8 inch

     iPhone 12, iPhone 12 Pro, iPhone 13, iPhone 13 Pro
     6.06 inch - normal - {{0, 0}, {390, 844}}
     6.06 inch - zoomed - {{0, 0}, {320, 693}} - new zoomed size

     iPhone 12 Pro Max, iPhone 13 Pro Max
     6.68 inch - normal - {{0, 0}, {428, 926}}
     6.68 inch - zoomed - {{0, 0}, {375, 812}} - becomes same as 5.8 inch
     
     */
    
    // iPhone Display Zoomed Size 1
    // iPhone X, iPhone Xs, iPhone 11 Pro, iPhone 12 mini, iPhone 13 mini,
    // iPhone 12, iPhone 12 Pro, iPhone 13, iPhone 13 Pro
    
    fileprivate static let kiPhoneRetinaDZ1Width = 320.0
    fileprivate static let kiPhoneRetinaDZ1Height = 693.0
    
    class func iPhoneRetinaDZ1Width(landscape: Bool) -> CGFloat {
        if landscape {
            return kiPhoneRetinaDZ1Height
        } else {
            return kiPhoneRetinaDZ1Width
        }
    }
    
    class func iPhoneRetinaDZ1Height(landscape: Bool) -> CGFloat {
        if landscape {
            return kiPhoneRetinaDZ1Width
        } else {
            return kiPhoneRetinaDZ1Height
        }
    }
    
    class func iPhoneRetinaDZ1ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPhoneRetinaDZ1Width(landscape: landscape), height: iPhoneRetinaDZ1Height(landscape: landscape))
    }
    
    class func iPhoneRetinaDZ1Bounds(landscape: Bool) -> CGRect {
        let size = iPhoneRetinaDZ1ScreenSize(landscape: landscape)
        return CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
    }
    
    class func isRetinaDZ1Inch() -> Bool {
        let screenBounds = UIScreen.main.bounds
        
        if (UIView.isRetinaiPhone() &&
            ((screenBounds.size.height == kiPhoneRetinaDZ1Height && screenBounds.size.width == kiPhoneRetinaDZ1Width) ||
            (screenBounds.size.height == kiPhoneRetinaDZ1Width && screenBounds.size.width == kiPhoneRetinaDZ1Height))) {
            return true
        } else {
            return false
        }
    }
    
    /*
     
     iPads:
     Man there are a lot of iPads.
     
     iPad 9.7 inches 2048 x 1536 (all upto 6th Generation, /2 for non-retina ones)
     iPad 10.2 inches 2160 x 1620 (7th, 8th, 9th Generation)

     iPad Air 9.7 inches 2048 x 1536 (1st, 2nd Generation)
     iPad Air 10.5 inches 2224 x 1668 (3rd Generation)
     iPad Air 10.9 inches 2360 x 1640 (4th Generation)

     iPad Mini 7.9 inches 2048 x 1536 (all upto 5th Generation , /2 for iPad Mini 1, same as 9.7 inches iPad)
     iPad Mini 8.3 inches 2266 x 1488 (6th Generation)

     iPad Pro 9.7 inches 2048 x 1536
     iPad Pro 10.5 inches 2224 x 1668
     iPad Pro 11 inches 2388 x 1668 (1st, 2nd, 3rd Generation)
     iPad Pro 12.9 inches 2732 x 2048 (1st, 2nd, 3rd, 4th Generation)
     
     */
    
    // iPad 9.7 inches
    // 2048x1536
    // 1024x768
    
    fileprivate static let kiPadRetina9_7Width = 1024.0
    fileprivate static let kiPadRetina9_7Height = 768.0
    
    class func iPadRetina9_7Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina9_7Height
        } else {
            return kiPadRetina9_7Width
        }
    }
    
    class func iPadRetina9_7Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina9_7Width
        } else {
            return kiPadRetina9_7Height
        }
    }
    
    class func iPadRetina9_7ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina9_7Width(landscape: landscape), height: iPadRetina9_7Height(landscape: landscape))
    }
    
    class func iPadRetina9_7Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina9_7ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina9_7Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina9_7Height && screenBounds.size.width == kiPadRetina9_7Width) || (screenBounds.size.height == kiPadRetina9_7Width && screenBounds.size.width == kiPadRetina9_7Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 8.3 inches
    // 2266x1488
    // 1133x744
    
    fileprivate static let kiPadRetina8_3Width = 1133.0
    fileprivate static let kiPadRetina8_3Height = 744.0
    
    class func iPadRetina8_3Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina8_3Height
        } else {
            return kiPadRetina8_3Width
        }
    }
    
    class func iPadRetina8_3Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina8_3Width
        } else {
            return kiPadRetina8_3Height
        }
    }
    
    class func iPadRetina8_3ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina8_3Width(landscape: landscape), height: iPadRetina8_3Height(landscape: landscape))
    }
    
    class func iPadRetina8_3Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina8_3ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina8_3Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina8_3Height && screenBounds.size.width == kiPadRetina8_3Width) || (screenBounds.size.height == kiPadRetina8_3Width && screenBounds.size.width == kiPadRetina8_3Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 10.2 inches
    // 2160x1620
    // 1080x810
    
    fileprivate static let kiPadRetina10_2Width = 1080.0
    fileprivate static let kiPadRetina10_2Height = 810.0
    
    class func iPadRetina10_2Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_2Height
        } else {
            return kiPadRetina10_2Width
        }
    }
    
    class func iPadRetina10_2Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_2Width
        } else {
            return kiPadRetina10_2Height
        }
    }
    
    class func iPadRetina10_2ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina10_2Width(landscape: landscape), height: iPadRetina10_2Height(landscape: landscape))
    }
    
    class func iPadRetina10_2Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina10_2ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina10_2Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina10_2Height && screenBounds.size.width == kiPadRetina10_2Width) || (screenBounds.size.height == kiPadRetina10_2Width && screenBounds.size.width == kiPadRetina10_2Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 10.5 inches
    // 2224x1668
    // 1112x834
    
    fileprivate static let kiPadRetina10_5Width = 1112.0
    fileprivate static let kiPadRetina10_5Height = 834.0
    
    class func iPadRetina10_5Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_5Height
        } else {
            return kiPadRetina10_5Width
        }
    }
    
    class func iPadRetina10_5Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_5Width
        } else {
            return kiPadRetina10_5Height
        }
    }
    
    class func iPadRetina10_5ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina10_5Width(landscape: landscape), height: iPadRetina10_5Height(landscape: landscape))
    }
    
    class func iPadRetina10_5Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina10_5ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina10_5Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina10_5Height && screenBounds.size.width == kiPadRetina10_5Width) || (screenBounds.size.height == kiPadRetina10_5Width && screenBounds.size.width == kiPadRetina10_5Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 10.9 inches
    // 2360x1640
    // 1180x820
    
    fileprivate static let kiPadRetina10_9Width = 1180.0
    fileprivate static let kiPadRetina10_9Height = 820.0
    
    class func iPadRetina10_9Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_9Height
        } else {
            return kiPadRetina10_9Width
        }
    }
    
    class func iPadRetina10_9Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina10_9Width
        } else {
            return kiPadRetina10_9Height
        }
    }
    
    class func iPadRetina10_9ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina10_9Width(landscape: landscape), height: iPadRetina10_9Height(landscape: landscape))
    }
    
    class func iPadRetina10_9Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina10_9ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina10_9Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina10_9Height && screenBounds.size.width == kiPadRetina10_9Width) || (screenBounds.size.height == kiPadRetina10_9Width && screenBounds.size.width == kiPadRetina10_9Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 11 inches
    // 2388x1668
    // 1194x834
    
    fileprivate static let kiPadRetina11Width = 1194.0
    fileprivate static let kiPadRetina11Height = 834.0
    
    class func iPadRetina11Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina11Height
        } else {
            return kiPadRetina11Width
        }
    }
    
    class func iPadRetina11Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina11Width
        } else {
            return kiPadRetina11Height
        }
    }
    
    class func iPadRetina11ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina11Width(landscape: landscape), height: iPadRetina11Height(landscape: landscape))
    }
    
    class func iPadRetina11Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina11ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina11Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina11Height && screenBounds.size.width == kiPadRetina11Width) || (screenBounds.size.height == kiPadRetina11Width && screenBounds.size.width == kiPadRetina11Height)) {
                return true
            }
        }
            
        return false
    }
    
    // iPad 12.9 inches (returns 9.7 inches size when display zoomed)
    // 2732x2048
    // 1366x1024
    
    fileprivate static let kiPadRetina12_9Width = 1366.0
    fileprivate static let kiPadRetina12_9Height = 1024.0
    
    class func iPadRetina12_9Width(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina12_9Height
        } else {
            return kiPadRetina12_9Width
        }
    }
    
    class func iPadRetina12_9Height(landscape: Bool) -> CGFloat {
        if (!landscape) {
            return kiPadRetina12_9Width
        } else {
            return kiPadRetina12_9Height
        }
    }
    
    class func iPadRetina12_9ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPadRetina12_9Width(landscape: landscape), height: iPadRetina12_9Height(landscape: landscape))
    }
    
    class func iPadRetina12_9Bounds(landscape: Bool) -> CGRect {
        let size = iPadRetina12_9ScreenSize(landscape: landscape)
        return CGRect(x:0.0, y:0.0, width: size.width, height: size.height)
    }
    
    class func isiPadRetina12_9Inch() -> Bool {
        if (UIView.isRetinaiPad()) {
            let screenBounds = UIScreen.main.bounds
            if ((screenBounds.size.height == kiPadRetina12_9Height && screenBounds.size.width == kiPadRetina12_9Width) || (screenBounds.size.height == kiPadRetina12_9Width && screenBounds.size.width == kiPadRetina12_9Height)) {
                return true
            }
        }
            
        return false
    }
}


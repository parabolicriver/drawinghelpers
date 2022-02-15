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

     iPad Mini 7.9 inches 2048 x 1536 (all upto 5th Generation (/2 for iPad Mini 1)
     iPad Mini 8.3 inches 2266 x 1488 (6th Generation)

     iPad Pro 9.7 inches 2048 x 1536
     iPad Pro 10.5 inches 2224 x 1668
     iPad Pro 11 inches 2388 x 1668 (1st, 2nd, 3rd Generation)
     iPad Pro 12.9 inches 2732 x 2048 (1st, 2nd, 3rd, 4th Generation)
     
     */
}


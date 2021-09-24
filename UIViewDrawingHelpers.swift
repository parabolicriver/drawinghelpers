//
//  UIViewDrawingHelpers.swift
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 24/09/21.
//  Copyright © 2021 Parabolic River. All rights reserved.
//

import Foundation
import UIKit

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
    
    class func isRetina5_42Inch() -> Bool {
        var isScale3 = false
        var widthAndHeightMatch = false
        
        
        
        return isScale3 && widthAndHeightMatch;
    }
    
    // iPhone 12 mini, 13 mini
    
    fileprivate static let iPhoneRetina5_42Width = 375.0
    fileprivate static let iPhoneRetina5_42Height = 812.0
    
    class func iPhoneRetina5_42Width(landscape: Bool) -> CGFloat {
        if (landscape) {
            return iPhoneRetina5_42Height
        } else {
            return iPhoneRetina5_42Width
        }
    }
    
    class func iPhoneRetina5_42Height(landscape: Bool) -> CGFloat {
        if (landscape) {
            return iPhoneRetina5_42Width
        } else {
            return iPhoneRetina5_42Height
        }
    
    }
    
    class func iPhoneRetina5_42ScreenSize(landscape: Bool) -> CGSize {
        return CGSize(width: iPhoneRetina5_42Width(landscape: landscape), height: iPhoneRetina5_42Height(landscape: landscape));
    }
    
    class func iPhoneRetina5_42Bounds(landscape: Bool) -> CGRect {
        return CGRect(x: 0.0, y: 0.0, width: iPhoneRetina5_42Width(landscape: landscape), height: iPhoneRetina5_42Height(landscape: landscape));
    }
        
    
    // iPhone 12, 12 Pro, 13, 13 Pro
    
    class func isRetina6_06Inch() -> Bool {
        return false;
    }
    
    // iPhone 12 Pro Max, 13 Pro Max
    
    class func isRetina6_68Inch() -> Bool {
        return false;
    }
}


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
    
    // iPhone 12 mini, 13 mini
    
    static let iPhoneRetina5_42Width = 375;
    static let iPhoneRetina5_42Height = 812;
    
    class func isRetina5_42Inch() -> Bool {
        return false;
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


//
//  UIViewDrawingHelpers.swift
//  PARDrawingHelpers
//
//  Created by Anuj Seth on 24/09/21.
//  Copyright © 2021 Parabolic River. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /** iOS versions **/
    
    func iOS14AndLater() -> Bool {
        if let iOSVersion = Float(UIDevice.current.systemVersion) {
            return iOSVersion >= 14.0
        }
        
        return false;
    }
    
    func iOS15AndLater() -> Bool {
        if let iOSVersion = Float(UIDevice.current.systemVersion) {
            return iOSVersion >= 15.0
        }
        
        return false;
    }
}


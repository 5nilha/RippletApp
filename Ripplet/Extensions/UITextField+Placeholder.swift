//
//  UITextField+Placeholder.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/10/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

extension UITextField {
    
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        
        set {
            if let placeholder = self.placeholder {
                self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedStringKey.foregroundColor: newValue!])
            }
        }
    }
}

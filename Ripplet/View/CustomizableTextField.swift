//
//  CustomizableTextField.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/8/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class CustomizableTextField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    class SignTextField: UITextField {
        
        
        //    override func draw(_ rect: CGRect) {
        //
        //    }
        //this function allow to show the changes on the Interface Builder
        override func prepareForInterfaceBuilder() {
            customizeView()
        }
        
        
        override func awakeFromNib() {
            super.awakeFromNib()
            customizeView()
        }
        
        
        func customizeView() {
            backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2504280822)
            layer.cornerRadius = 5.0
            textAlignment = .center
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
            clipsToBounds = true
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                
                attributedPlaceholder = place // overwrites the regular placeholder
            }
        }
        
    }

}

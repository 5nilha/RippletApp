//
//  GradientView.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/12/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

@IBDesignable // letd thid class to be rendered inside the storyboard

class GradientView: UIView {

    //@IBInspectable allows us to change the values inside the storyboard
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) {
        didSet {
            self.setNeedsLayout() //updates the layout of the view
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
   
    //When the layout is updated this function is called. In this function we create a layer and add it to the UIView subclass
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        //top color and bottom color
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        //start point
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        
        //End point
        gradientLayer.endPoint = CGPoint(x: 0, y: 0)
        
        //size of the shape it will fullfil
        gradientLayer.frame = self.bounds
        
        //adds the gradient layer to UIView sublayer
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}

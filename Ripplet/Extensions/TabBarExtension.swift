//
//  TabBarExtension.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/19/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import Foundation

extension UITabBarController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)
    }
    
}

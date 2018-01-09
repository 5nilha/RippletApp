//
//  ViewControllerExtension.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/9/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func errorAlert(title : String, message : String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }

}

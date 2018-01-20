//
//  ViewControllerExtension.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/9/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit


//Extends the View controller functionalities 
extension UIViewController {
    
    
    //This function creates a error alert to show every time an error is found on user interaction
    func errorAlert(title : String, message : String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    
    //this function creates the sideMenu using SWReveal API
    func addSideMenuButton(menuButton: UIButton){
        if revealViewController() != nil {
            let target = self.revealViewController()
            let action = #selector(SWRevealViewController.revealToggle(_:))
            
            menuButton.addTarget(target, action: action, for: .touchUpInside)
           
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            
            revealViewController().rearViewRevealWidth = self.view.frame.size.width - 70
        }
    }
    
    
    
    func addSideMenuBarButton(menuButton: UIBarButtonItem) {
        if revealViewController() != nil {
            let target = self.revealViewController()
            let action = #selector(SWRevealViewController.revealToggle(_:))
            
           
            menuButton.target = target
            menuButton.action = action
            
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            
            revealViewController().rearViewRevealWidth = self.view.frame.size.width - 70
        }
    }
    
    
}

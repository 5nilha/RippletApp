//
//  ViewController.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/8/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField : CustomizableTextField!
    @IBOutlet weak var passwordTextFIeld : CustomizableTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonTapped (_ sender : UIButton) {
        
        
        
    }
    
    @IBAction func signupButtonTapped(_ sender : UIButton) {
        
        
    }
    
    @IBAction func facebookLoginButtonTapped(_ sender : UIButton) {
        
    }
    
    @IBAction func googleLoginButtonTapped(_ sender: UIButton) {
        
    }

}


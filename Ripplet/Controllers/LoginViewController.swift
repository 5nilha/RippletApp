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
    @IBOutlet weak var passwordTextField : CustomizableTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func checkFields() {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if email.isEmpty || password.isEmpty {
            errorAlert(title: "Login Alert", message: "No field can be blank.")
        }
    }
    
    @IBAction func loginButtonTapped (_ sender : UIButton) {
        
        checkFields()
        
        guard let email = emailTextField.text, email != "" else { return }
        guard let password = passwordTextField.text, password != "" else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error {
                self.errorAlert(title: "Login Error", message: error.localizedDescription)
                return
            }
        
            //Dismiss Keyboard
            self.view.endEditing(true)
            
            //present the Feeds View
            let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
            let viewController = homeStoryboard.instantiateViewController(withIdentifier: "FeedsView")
            UIApplication.shared.keyWindow?.rootViewController = viewController
            self.dismiss(animated: true, completion: nil)
            
        }
   
    }
    
    @IBAction func signupButtonTapped(_ sender : UIButton) {
        performSegue(withIdentifier: "signupSegue", sender: nil)
    }
    
    @IBAction func facebookLoginButtonTapped(_ sender : UIButton) {
        
    }
    
    @IBAction func googleLoginButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindToLoginView(segue : UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }

}


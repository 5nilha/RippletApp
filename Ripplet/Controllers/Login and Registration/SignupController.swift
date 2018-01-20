//
//  SignupController.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/9/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class SignupController: UITableViewController {

    @IBOutlet weak var firstNameTextField : CustomizableTextField!
    @IBOutlet weak var lastNameTextField : CustomizableTextField!
    @IBOutlet weak var usernameTextField : CustomizableTextField!
    @IBOutlet weak var emailTextField : CustomizableTextField!
    @IBOutlet weak var phoneTextField : CustomizableTextField!
    @IBOutlet weak var zipCodeTextField : CustomizableTextField!
    @IBOutlet weak var passwordTextField : CustomizableTextField!
    @IBOutlet weak var newsletterSubscriptionSwitch : UISwitch!
    
    var newUser : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsletterSubscriptionSwitch.isOn = true
        self.title = "Sign Up"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        if let newUser = newUser {
            DatabaseServices.shared.create(user: newUser, to: .users)
        }
    }
    
    
    /*The function below checks if the fields are empty.
     * If some field is empty, it calls an error alert.
    */
    func checkFields() {
        
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let username = usernameTextField.text ?? ""
        let email = emailTextField.text ?? ""
        let phone = phoneTextField.text ?? ""
        let zipCode = zipCodeTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if firstName.isEmpty || lastName.isEmpty || username.isEmpty || email.isEmpty  || phone.isEmpty || zipCode.isEmpty || password.isEmpty {
            errorAlert(title: "Registration error", message: "You should fill all the fields to complete the registration")
        }
        
    }
    
    
    @IBAction func signupButtonTapped (_ sender : UIButton ) {
        
        checkFields()
        
        guard let firstName = firstNameTextField.text, firstName != "" else { return }
        guard let lastName = lastNameTextField.text, lastName != "" else { return }
        guard let username = usernameTextField.text, username != "" else { return }
        guard let email = emailTextField.text, email != "" else { return }
        guard let phone = phoneTextField.text, phone != "" else { return }
        guard let zipCode = zipCodeTextField.text, zipCode != "" else { return }
        guard let password = passwordTextField.text, password != "" else { return }
      
        let newsletterSubscriber: Bool!
        if newsletterSubscriptionSwitch.isOn {
            newsletterSubscriber = true
        }
        else {
            newsletterSubscriber = false
        }
        
        
        //Registering user on Firebase
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            
            if let error = error {
                self.errorAlert(title: "Registration error", message: error.localizedDescription)
                return
            }
 
            
            let userID = Auth.auth().currentUser!.uid //Getting the automatic generated userId from authentication to pass to the database storage
            self.newUser = User(userID: userID, firstName: firstName, lastName: lastName, username: username, emailAddress: email, phoneNumber: phone, zipCode: zipCode, newsletterSubscriber: newsletterSubscriber)
            
            if let user = user {
                self.configureKeyChain(id: user.uid)
            }
          
            
            //Dismiss Keyboard
            self.view.endEditing(true)
            
            //Present the Home View Controller
            let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
            let viewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeView")
            UIApplication.shared.keyWindow?.rootViewController = viewController
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func configureKeyChain(id: String) {
        
        let saveSuccessful: Bool = KeychainWrapper.standard.set(id, forKey: "uid")
        print("DEVELOPER: Data saved to keychain \(saveSuccessful)")
    }
    
    
    @IBAction func backButtonTapped() {
        self.dismiss(animated: true, completion: nil)
    }

}

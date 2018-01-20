//
//  ProfileTableViewController.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/12/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: ConstantProperties.editProfileSegue, sender: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }


}

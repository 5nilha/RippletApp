//
//  EditNameVC.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/19/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class EditNameVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton ){
        self.dismiss(animated: true, completion: nil)
    }

}

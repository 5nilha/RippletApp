//
//  SignupControllerExtension.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/10/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class SignupControllerExtension: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = UIColor.white
    }
}

//
//  FeedsViewController.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/12/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class FeedsViewController: UIViewController {

    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSideMenuButton(menuButton: menuButton)
        
    }

    
    @IBAction func unwindToFeedVC(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}

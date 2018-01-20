//
//  SideMenuViewController.swift
//  Ripplet
//
//  Created by Fabio Quintanilha on 1/12/18.
//  Copyright © 2018 Ripplet. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Changing the color of the Selected Cell on the Side Menu on TableViewCell
        let colorView = UIView()
        colorView.backgroundColor = #colorLiteral(red: 0.1607843137, green: 0.5019607843, blue: 0.7254901961, alpha: 1)
         UITableViewCell.appearance().selectedBackgroundView = colorView
        
    }


//    @IBAction func userProfileTapped(_ sender : UIButton) {
//
//        let profileStoryBoard = UIStoryboard(name: ConstantProperties.profileStoryBoard, bundle: nil)
//        let viewController = profileStoryBoard.instantiateViewController(withIdentifier: ConstantProperties.profileIdentifier)
//        UIApplication.shared.keyWindow?.rootViewController = viewController
//        self.dismiss(animated: true, completion: nil)
//
//    }

}

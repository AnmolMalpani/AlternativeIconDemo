//
//  ViewController.swift
//  Alternative_Icon
//
//  Created by Anmol Maheshwari on 14/05/20.
//  Copyright © 2020 Anmol Maheshwari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeIcon(_ sender: UIButton) {
        // If you want to show confimation alert then call below method
        showAlert(sender.tag)
        
        // If you don't want to show confimation alert then call below method and
        /*
         dontShowAlert(sender.tag)
         */
    }
    
    // Show confirmation alert
    private func showAlert(_ tag: Int) {
        if tag == 100 {
            UIApplication.shared.setAlternateIconName(nil)
        } else if tag == 101 {
            UIApplication.shared.setAlternateIconName("red")
        } else if tag == 102 {
            UIApplication.shared.setAlternateIconName("blue")
        } else {
            UIApplication.shared.setAlternateIconName("green")
        }
    }
    
    // Don't Show confirmation alert
    private func dontShowAlert(_ tag: Int) {
        let chagneAppICon = ChangeAppIcon()
        if tag == 100 {
            UIApplication.shared.setAlternateIconName(nil)
        } else if tag == 101 {
            chagneAppICon.lc_setAlternateIconName("red")
        } else if tag == 102 {
            chagneAppICon.lc_setAlternateIconName("blue")
        } else {
            chagneAppICon.lc_setAlternateIconName("green")
        }
    }
}

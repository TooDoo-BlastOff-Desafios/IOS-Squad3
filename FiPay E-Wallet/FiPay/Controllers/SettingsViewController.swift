//
//  SettingsViewController.swift
//  FiPay
//
//  Created by user209844 on 02/02/22.
//

import UIKit

class SettingsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func servicesBtn(_ sender: Any) {
        performSegue(withIdentifier: "transactions", sender: self)
    }
    
    @IBAction func logoutBtn(_ sender: Any) {
        performSegue(withIdentifier: "logout", sender: self)
    }
    
    @IBAction func myCardBtn(_ sender: Any) {
        performSegue(withIdentifier: "myCard", sender: self)
    }
    
    
}

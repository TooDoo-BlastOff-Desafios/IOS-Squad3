//
//  CreateViewController.swift
//  FiPay
//
//  Created by user209844 on 02/02/22.
//

import UIKit
import Firebase

class CreateViewController: UIViewController {
    
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var cpfTxtField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        createButton.layer.cornerRadius = 8
        
    }
    
    @IBAction func createAccountBtn(_ sender: Any){
        if let email = addressField.text, let password = passwordField.text {
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        if let e = error {
                            print(e.localizedDescription)
                        } else {
                            self.performSegue(withIdentifier: "cardCreate", sender: self)
                        }

                    }
                }
    }
    


}

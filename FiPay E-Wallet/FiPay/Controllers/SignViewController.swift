//
//  SignViewController.swift
//  FiPay
//
//  Created by user209844 on 02/02/22.
//

import UIKit
import Firebase

class SignViewController: UIViewController {
    
    @IBOutlet weak var signInTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var signInOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInOutlet.layer.cornerRadius = 8
                
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        if let email = signInTxtField.text, let password = passwordTxtField.text {
                    Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                        if let e = error {
                            print(e.localizedDescription)
                        } else {
                            self.performSegue(withIdentifier: "LoginToHome", sender: self)
                        }

                    }
                }
        
    }
    

}

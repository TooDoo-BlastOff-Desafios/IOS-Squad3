//
//  ViewController.swift
//  FiPay
//
//  Created by user209844 on 01/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signInBtn: UIButton!
    
    @IBOutlet weak var createBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Definindo bordas dos botões na SPLASH
        signInBtn.layer.cornerRadius = 8
        createBtn.layer.borderColor = UIColor.white.cgColor
        createBtn.layer.borderWidth = 1
        createBtn.layer.cornerRadius = 8

    }
    //Aplicando funcionalidade aos botões
    // signLogin direciona para tela de login
    @IBAction func signLogin(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: self)
    }
    // createAccount direciona para tela de criação de conta
    @IBAction func createAccount(_ sender: Any) {
        performSegue(withIdentifier: "createAccount", sender: self)
    }
}


//
//  TransationsViewController.swift
//  FiPay
//
//  Created by user209844 on 04/02/22.
//

import UIKit

class TransactionsViewController: UIViewController {

    @IBOutlet weak var switchOne: UISwitch!
    @IBOutlet weak var switchTwo: UISwitch!
    @IBOutlet weak var switchThree: UISwitch!
    @IBOutlet weak var validateButton: UIButton!
    
    @IBOutlet weak var commentOutlet: UITextView!
    @IBOutlet weak var cashValueOutlet: UITextView!
    @IBOutlet weak var dateOutlet: UITextView!
    @IBOutlet weak var transferRecipOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Alterando o layout de botões
        commentOutlet.layer.cornerRadius = 8
        commentOutlet.layer.borderWidth = 1
        commentOutlet.layer.borderColor = UIColor.blue.cgColor
        
        cashValueOutlet.layer.cornerRadius = 8
        cashValueOutlet.layer.borderWidth = 1
        cashValueOutlet.layer.borderColor = UIColor.blue.cgColor
        
        dateOutlet.layer.cornerRadius = 8
        dateOutlet.layer.borderWidth = 1
        dateOutlet.layer.borderColor = UIColor.blue.cgColor
        
        transferRecipOutlet.layer.cornerRadius = 8
        transferRecipOutlet.layer.borderWidth = 1
        transferRecipOutlet.layer.borderColor = UIColor.blue.cgColor
        
        validateButton.layer.cornerRadius = 8
        
        //Aplicando animação no botão switch
        switchOne.setOn(false, animated: false)
        switchTwo.setOn(false, animated: false)
        switchThree.setOn(false, animated: false)
    }
    
    @IBAction func validateBtn(_ sender: Any) {
        
        if switchOne.isOn {
            print("Depósito feito!")
            print(commentOutlet.text as Any)
            print(cashValueOutlet.text as Any)
            print(dateOutlet.text as Any)
            
            switchTwo.setOn(false, animated: true)
            switchThree.setOn(false, animated: true)
    }
        
  }
    
}

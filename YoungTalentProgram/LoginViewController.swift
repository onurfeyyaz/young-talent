//
//  LoginViewController.swift
//  YoungTalentProgram
//
//  Created by Feyyaz ONUR on 2.03.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        phoneNumberTextField.borderStyle = .none
        phoneNumberTextField.layer.cornerRadius = 17.0
    }
}

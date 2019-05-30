//
//  RegisterViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var cfPasswordTextField: UITextField!

    class func create() -> RegisterViewController{
        let controller = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        return controller as RegisterViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

}

extension RegisterViewController {
    
    private func setupView() {
        registerButton.layer.cornerRadius = 7
        
        emailTextField.layer.cornerRadius = 7
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor("#FFE6E6").cgColor
        
        passwordTextField.layer.cornerRadius = 7
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor("#FFE6E6").cgColor
        
        cfPasswordTextField.layer.cornerRadius = 7
        cfPasswordTextField.layer.borderWidth = 1
        cfPasswordTextField.layer.borderColor = UIColor("#FFE6E6").cgColor
    }
    
}

extension RegisterViewController {
    
    @IBAction func buttonLoginPressed(_sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

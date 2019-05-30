//
//  LoginViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift
import ESTabBarController_swift

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailView: UIView!
    
    class func create() -> LoginViewController {
        let controller = LoginViewController(nibName: "LoginViewController", bundle: nil)
        return controller as LoginViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
    }

}

extension LoginViewController {
    
    func setupView() {
        loginButton.layer.cornerRadius = 7
        
        let attrs = [
            NSAttributedString.Key.foregroundColor : UIColor.lightGray,
            NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]
        let attributedString = NSMutableAttributedString(string:"")
        let forgotButtonTitle = NSMutableAttributedString(string:"Forgot?", attributes:attrs)
        attributedString.append(forgotButtonTitle)
        forgotButton.setAttributedTitle(attributedString, for: .normal)
        
        emailView.layer.cornerRadius = 7
        emailView.layer.borderWidth = 1
        emailView.layer.borderColor = UIColor("#FFE6E6").cgColor
        
        passwordView.layer.cornerRadius = 7
        passwordView.layer.borderWidth = 1
        passwordView.layer.borderColor = UIColor("#FFE6E6").cgColor
    }
    
}

extension LoginViewController {
    
    @IBAction func registerPressed(_sender: Any) {
        let controller = RegisterViewController.create()
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func loginPressed(_sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.setupHomeScreen()
    }
    
}

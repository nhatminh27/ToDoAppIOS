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
    @IBOutlet weak var passwordTextField: UITextField!

    
    class func create() -> LoginViewController {
        let controller = LoginViewController(nibName: "LoginViewController", bundle: nil)
        return controller as LoginViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupButton()
        
        //let imageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: 20, height: 20))
        //let icon = UIImage(named: "ic_eye_password")
        //imageView.image = icon
        //passwordTextField.rightViewMode = .always
        //passwordTextField.rightView = imageView
        
    }

}

extension LoginViewController {
    
    func setupButton() {
        loginButton.layer.cornerRadius = 5
        
        let attrs = [
            NSAttributedString.Key.foregroundColor : UIColor.lightGray,
            NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]
        let attributedString = NSMutableAttributedString(string:"")
        let forgotButtonTitle = NSMutableAttributedString(string:"Forgot?", attributes:attrs)
        attributedString.append(forgotButtonTitle)
        forgotButton.setAttributedTitle(attributedString, for: .normal)
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

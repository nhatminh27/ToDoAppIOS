//
//  RegisterViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    class func create() -> RegisterViewController{
        let controller = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        return controller as RegisterViewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension RegisterViewController {
    
    @IBAction func buttonLoginPressed(_sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

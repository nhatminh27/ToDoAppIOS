//
//  ProfileViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ProfileViewController {
    
    override func setUpUI() {
        showMenuButton()
        showEditButton()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigation.item.title = "PROFILE"
        navigation.bar.titleTextAttributes = navTitleTextAttributes as [NSAttributedString.Key : Any]
        navigation.bar.isShadowHidden = true
        navigation.bar.backgroundColor = UIColor("#FFE6E6")
        navigation.bar.tintColor = UIColor("#243B6B")
    }
    
}

extension ProfileViewController {
    
    func showEditButton() {
        let button = UIBarButtonItem(image: UIImage(named: "ic_edit_profile"), style: .plain, target: self, action: #selector(self.editButtonPressed(_:)))
        self.navigationItem.rightBarButtonItem = button
    }
    
    @IBAction func editButtonPressed(_ sender: AnyObject) {
        
    }
    
}

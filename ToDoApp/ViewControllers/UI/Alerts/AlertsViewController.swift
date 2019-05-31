//
//  AlertsViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class AlertsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension AlertsViewController {
    
    override func setUpUI() {
        showMenuButton()
        showSearchButton()
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigation.item.title = "NOTIFICATIONS"
        navigation.bar.titleTextAttributes = navTitleTextAttributes as [NSAttributedString.Key : Any]
        navigation.bar.isShadowHidden = true
        navigation.bar.backgroundColor = UIColor("#FFE6E6")
        navigation.bar.tintColor = UIColor("#243B6B")
    }
    
}

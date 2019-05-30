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
        self.navigationItem.title = "NOTIFICATIONS"
        showMenuButton()
        showSearchButton()
    }
    
}

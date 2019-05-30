//
//  UpcomingViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class UpcomingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension UpcomingViewController {
    
    override func setUpUI() {
        self.navigationItem.title = "SCHEDULER"
        showMenuButton()
        showSearchButton()
    }
    
}

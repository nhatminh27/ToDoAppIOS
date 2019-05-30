//
//  TodayViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit
import SideMenu

class TodayViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension TodayViewController {
    
    override func setUpUI() {
        self.navigationItem.title = "TO-DO"
        showMenuButton()
        showSearchButton()
    }
    
}

//
//  TodayViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit
import SideMenu

class TodayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "TO-DO"
        addMenuButton()
        addSearchButton()
    }

}

extension TodayViewController {
    
    private func addMenuButton() {
        let menuButton = UIButton(type: .custom)
        menuButton.setImage(UIImage(named: "ic_menu"), for: .normal)
        //backButton.setTitle("Back", for: .normal)
        menuButton.setTitleColor(menuButton.tintColor, for: .normal)
        menuButton.addTarget(self, action: (#selector(TodayViewController.menuAction)), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: menuButton)
    }
    
    private func addSearchButton() {
        let searchButton = UIButton(type: .custom)
        searchButton.setImage(UIImage(named: "ic_search"), for: .normal)
        //backButton.setTitle("Back", for: .normal)
        searchButton.setTitleColor(searchButton.tintColor, for: .normal)
        searchButton.addTarget(self, action: (#selector(TodayViewController.searchAction)), for: .touchUpInside)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
    }
    
    @objc
    func menuAction() {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
    }
    
    @objc
    func searchAction() {
        
    }
    
}

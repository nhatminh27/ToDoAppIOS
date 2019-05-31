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
    
    @IBOutlet weak var taskTableView: UITableView!
    
    private var menuItems = [
        Task("Read Type Guidelines", false),
        Task("Complete Responsive Design", false),
        Task("Bring Groceries", false),
        Task("Take Muffy for walk", false),
        Task("Talk to Pamela and Betty", false)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension TodayViewController {
    
    override func setUpUI() {
        setupNavigationBar()
        showMenuButton()
        showSearchButton()
        setupMenuView()
    }
    
}

extension TodayViewController {
    
    private func setupNavigationBar() {
        navigation.item.title = "TO-DO"
        navigation.bar.titleTextAttributes = navTitleTextAttributes as [NSAttributedString.Key : Any]
        navigation.bar.isShadowHidden = true
        navigation.bar.backgroundColor = UIColor("#FFE6E6")
        navigation.bar.tintColor = UIColor("#243B6B")
    }
    
    private func setupMenuView() {
        self.taskTableView.registerCustomCell(TodayTableViewCell.self, fromNib: true)
        self.taskTableView.dataSource = self
        self.taskTableView.delegate = self
        self.taskTableView.separatorStyle = .none
//        self.taskTableView.estimatedRowHeight = 44.0
        self.taskTableView.rowHeight = UITableView.automaticDimension
        self.taskTableView.separatorStyle = .none
    }
    
}

extension TodayViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCustomCell(TodayTableViewCell.self)
        cell?.setData(self.menuItems[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
        //let cell = tableView.cellForRow(at: indexPath) as! TodayTableViewCell
        menuItems[indexPath.row].isSelected = !menuItems[indexPath.row].isSelected
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    
}

//
//  UpcomingViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class UpcomingViewController: BaseViewController {
    
    @IBOutlet weak var taskTableView: UITableView!
    private var taskItems = [
        Task("Clean Room", false, "01-06-2018"),
        Task("Take Abby to Doctor", false, "03-06-2018"),
        Task("Sleep in the afternoon", false, "03-06-2018"),
        Task("Talk to Mom", false, "05-06-2018"),
        Task("Study UI/UX Design", false, "05-06-2018")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension UpcomingViewController {
    
    override func setUpUI() {
        showMenuButton()
        showSearchButton()
        setupNavigationBar()
        setupTableView()
    }
    
}

extension UpcomingViewController {
    
    private func setupNavigationBar() {
        navigation.item.title = "SCHEDULER"
        navigation.bar.titleTextAttributes = navTitleTextAttributes as [NSAttributedString.Key : Any]
        navigation.bar.isShadowHidden = true
        navigation.bar.backgroundColor = UIColor("#FFE6E6")
        navigation.bar.tintColor = UIColor("#243B6B")
    }
    
    private func setupTableView() {
        self.taskTableView.registerCustomCell(UpcomingTableViewCell.self, fromNib: true)
        self.taskTableView.dataSource = self
        self.taskTableView.delegate = self
        self.taskTableView.separatorStyle = .none
        //self.taskTableView.rowHeight = 200.0
    }
    
}

extension UpcomingViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCustomCell(UpcomingTableViewCell.self)
        cell?.setData(self.taskItems[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }


}


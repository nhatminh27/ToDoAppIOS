//
//  LeftMenuViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/29/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var menuItems = [
        "To-do",
        "Scheduler",
        "Notifications",
        "Profile",
        "Logout"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setupMenuView()
    }


}

extension LeftMenuViewController {
    
    private func setUpUI() {
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.bounds.height * 0.5
        self.avatarImageView.clipsToBounds = true
        self.avatarImageView.image = UIImage(named: "ic_avatar")
    }
    
    private func setupMenuView() {
        self.menuTableView.registerCustomCell(LeftMenuTableViewCell.self, fromNib: true)
        self.menuTableView.dataSource = self
        self.menuTableView.delegate = self
        self.menuTableView.separatorStyle = .none
        self.menuTableView.estimatedRowHeight = 44.0
        self.menuTableView.rowHeight = UITableView.automaticDimension
        self.menuTableView.separatorStyle = .none
    }
}

extension LeftMenuViewController: UITableViewDataSource, UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCustomCell(LeftMenuTableViewCell.self)
        cell?.setData(self.menuItems[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       
//        switch indexPath.row {
//        case 0:
//        case 1:
//        case 2:
//        default:
//            break
//        }
        dismiss(animated: true, completion: nil)
    }
    
}


//
//  BaseViewController.swift
//  OneWay
//
//  Created by Hao Le on 8/3/18.
//  Copyright © 2018 Hao Le. All rights reserved.
//

import UIKit
import SideMenu
import EachNavigationBar

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpComponentsOnLoad()
        setUpUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpComponentsOnWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setUpComponentsOnDidAppear()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        setUpComponentsOnWillDisappear()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        setUpComponentsOnDidDisappear()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension BaseViewController {

    @objc func setUpUI() { }

}

extension BaseViewController {

    func showNavigationBarLogo() {
        let logo = UIImage(named: "ic_nav_title")
        let imageView = UIImageView(image: logo)
        self.navigationItem.titleView = imageView
    }

    func hideNavigationBarLogo() {
        self.navigationItem.titleView = nil
    }

}

extension BaseViewController {
    
    @objc func showMenuButton() {
        //let button = UIBarButtonItem(image: UIImage(named: "ic_menu"), style: .plain, target: self, action:#selector(self.menuButtonPressed(_:)))
        //self.navigationItem.leftBarButtonItem = button
        self.navigation.item.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "ic_menu"),
            style: .plain,
            target: self,
            action: #selector(menuButtonPressed)
        )
        
    }
    
    @objc func showSearchButton() {
        //let button = UIBarButtonItem(image: UIImage(named: "ic_search"), style: .plain, target: self, action: nil)
        //self.navigationItem.rightBarButtonItem = button
        self.navigation.item.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "ic_search"),
            style: .plain,
            target: self,
            action: nil)
    }

    @objc func showBackButton() {
        let button = UIBarButtonItem(image: UIImage(named: "ic_nav_back"), style: .plain, target: self, action: #selector(self.backButtonPressed(_:)))
        self.navigationItem.leftBarButtonItem = button
    }

    @objc func showCloseButton() {
        let button = UIBarButtonItem(image: UIImage(named: "ic_nav_close"), style: .plain, target: self, action: #selector(self.navCloseButtonPressed(_:)))
        self.navigationItem.leftBarButtonItem = button
    }
    
    @IBAction func menuButtonPressed(_ sender: AnyObject) {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
        
    }

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.navigationController!.popViewController(animated: true)
    }

    @IBAction func navCloseButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true)
    }

}

extension BaseViewController {

    func showErrorMessage(_ message: String) {
        self.presentAlert(style: .alert, title: "Lỗi", message: message, actionTitles: ["OK"]) { (_) in

        }
    }
}

//
//  MainViewController.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/29/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import SideMenu

class MainViewController: ESTabBarController {
    
    class func create() -> MainViewController {
        let controller = MainViewController()
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setupSideMenu()
    }
    
    private func setupTabBar() {
        self.tabBar.backgroundImage = UIImage(named: "bg_tabbar")
        self.shouldHijackHandler = {
            tabbarController, viewController, index in
            if index == 2 {
                return true
            }
            return false
        }
        self.didHijackHandler = {
            [weak tabBarController] tabbarController, viewController, index in
        }
        
//        self.tabBar.backgroundImage = UIImage(named: "bg_tabbar")
        let today = TodayViewController()
        today.tabBarItem = ESTabBarItem(IrregularityBasicContentView(), title: nil, image: UIImage(named: "ic_list"), selectedImage: UIImage(named: "ic_list_selected"))
        let navToday = UINavigationController(rootViewController: today)
        
        let upcoming = UpcomingViewController()
        upcoming.tabBarItem = ESTabBarItem(IrregularityBasicContentView(), title: nil, image: UIImage(named: "ic_clock"), selectedImage: UIImage(named: "ic_clock_selected"))
        let navUpcoming = UINavigationController(rootViewController: upcoming)
        
        let plus = UpcomingViewController()
        plus.tabBarItem = ESTabBarItem(ExampleIrregularityContentView(), title: nil, image: UIImage(named: "ic_plus"), selectedImage: UIImage(named: "ic_plus"))
        
        let alert = AlertsViewController()
        alert.tabBarItem = ESTabBarItem(IrregularityBasicContentView(), title: nil, image: UIImage(named: "ic_bell"), selectedImage: UIImage(named: "ic_bell_selected"))
        let navAlert = UINavigationController(rootViewController: alert)
        
        let profile = ProfileViewController()
        profile.tabBarItem = ESTabBarItem(IrregularityBasicContentView(), title: nil, image: UIImage(named: "ic_people"), selectedImage: UIImage(named: "ic_people_selected"))
        let navProfile = UINavigationController(rootViewController: profile)
        
        self.viewControllers = [navToday, navUpcoming, plus, navAlert, navProfile]
    }
    
    private func setupSideMenu() {
        let menuLeftNav = UISideMenuNavigationController(rootViewController: LeftMenuViewController.initFromNib())
        menuLeftNav.isNavigationBarHidden = true
        SideMenuManager.default.menuLeftNavigationController = menuLeftNav
        SideMenuManager.default.menuPresentMode = .viewSlideInOut
        SideMenuManager.default.menuWidth = 0.85 * UIScreen.main.bounds.width
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
        SideMenuManager.default.menuFadeStatusBar = false
    }
    
}

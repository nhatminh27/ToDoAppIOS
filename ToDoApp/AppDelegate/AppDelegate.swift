//
//  AppDelegate.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/28/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpApplicationTheme()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = LoginViewController.create()
        let nav = UINavigationController(rootViewController: controller)
        nav.isNavigationBarHidden = true
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        return true
    }
    
    private func setUpApplicationTheme() {
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().barTintColor = UIColor("#FFE6E6")
        UINavigationBar.appearance().tintColor = UIColor("#243B6B")
        
        let navTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "AvenirLTStd-Black", size: 16),
            NSAttributedString.Key.foregroundColor: UIColor("#243B6B")
        ]
        UINavigationBar.appearance().titleTextAttributes = navTitleTextAttributes as [NSAttributedString.Key : Any]
    }

    func applicationWillResignActive(_ application: UIApplication) { }

    func applicationDidEnterBackground(_ application: UIApplication) { }

    func applicationWillEnterForeground(_ application: UIApplication) { }

    func applicationDidBecomeActive(_ application: UIApplication) { }

    func applicationWillTerminate(_ application: UIApplication) { }


}

extension AppDelegate {
    
    func setupHomeScreen() {
        let tab = MainViewController.create()
        window?.rootViewController = tab
        window?.makeKeyAndVisible()
    }
    
    
}


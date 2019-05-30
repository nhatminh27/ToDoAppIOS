//
//  UIViewController+Extension.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/29/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static func initFromNib() -> Self {
        func instantiateFromNib<T: UIViewController>(_: T.Type) -> T {
            return T(nibName: String(describing: T.self), bundle: nil)
        }
        return instantiateFromNib(self)
    }
    
    /*
     *** Class Methods ***
     */
    class func instanceFromNib(_ nibName: String! = nil, bundle: Bundle! = nil) -> UIViewController! {
        var name: String! = nil
        
        // If nibName == nil, get default name is Classname
        if nibName != nil {
            name = nibName
        } else {
            let fullClassName = NSStringFromClass(self)
            if let className = fullClassName.components(separatedBy: ".").last {
                name = className
            }
        }
        
        // Load from nib
        return self.init(nibName: name, bundle: bundle)
    }
    
    class func instanceFromStoryBoard(_ storyboardName: String) -> UIViewController! {
        let fullClassName = NSStringFromClass(self)
        let storyboardId = fullClassName.components(separatedBy: ".").last
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: storyboardId!)
        return viewController
    }
    /*
     *** Instance Methods ***
     */
    func defaultNavigationController() -> UINavigationController {
        // Return current NavigationController
        // If not, create new instance of NavigationController
        if let nav = self.navigationController {
            return nav
        } else {
            return UINavigationController(rootViewController: self)
        }
    }
    
    @objc open func setUpComponentsOnLoad() {
        
    }
    
    @objc open func setUpComponentsOnWillAppear() {
        
    }
    
    @objc open func setUpComponentsOnDidAppear() {
        
    }
    
    @objc open func setUpComponentsOnWillDisappear() {
        
    }
    
    @objc open func setUpComponentsOnDidDisappear() {
        
    }
    
}

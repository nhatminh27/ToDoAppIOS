//
//  UIAlertController+Extension.swift
//  IFonePC-iOS
//
//  Created by HaoLe on 7/3/18.
//  Copyright © 2018 HaoLe. All rights reserved.
//

import UIKit

public typealias ActionHandler = (_ action: UIAlertAction) -> Swift.Void
public typealias AttributedActionTitle = (title: String, style: UIAlertAction.Style)

public extension UIAlertController {

    // Support Present UIAlertController from anywhere. It will be presented by Top Presented ViewController.
    @discardableResult
    class func present(style: UIAlertController.Style = .alert,
                              title: String?,
                              message: String?,
                              actionTitles: [String]?,
                              handler: ActionHandler? = nil) -> UIAlertController {
        // Force unwrap rootViewController
        let rootViewController = UIApplication.shared.delegate!.window!!.rootViewController!

        return self.presentFromViewController(viewController: rootViewController, style: style, title: title, message: message, actionTitles: actionTitles, handler: handler)
    }

    @discardableResult
    class func present(style: UIAlertController.Style = .alert,
                              title: String?,
                              message: String?,
                              attributedActionTitles: [AttributedActionTitle]?,
                              handler: ActionHandler? = nil) -> UIAlertController {
        // Force unwrap rootViewController
        let rootViewController = UIApplication.shared.delegate!.window!!.rootViewController!

        return self.presentFromViewController(viewController: rootViewController, style: style, title: title, message: message, attributedActionTitles: attributedActionTitles, handler: handler)
    }

    // Simple class method to present UIAlertController with Default UIAlertAction
    @discardableResult
    class func presentFromViewController(viewController: UIViewController,
                                                style: UIAlertController.Style = .alert,
                                                title: String?,
                                                message: String?,
                                                actionTitles: [String]?,
                                                handler: ActionHandler? = nil) -> UIAlertController {
        return self.presentFromViewController(viewController: viewController,
                                              style: style,
                                              title: title,
                                              message: message,
                                              attributedActionTitles: actionTitles?.map({ (title) -> AttributedActionTitle in
                                                return (title: title, style: .default) }),
                                              handler: handler)
    }

    // Generic class method to present UIAlertController
    @discardableResult
    class func presentFromViewController(viewController: UIViewController,
                                                style: UIAlertController.Style = .alert,
                                                title: String?,
                                                message: String?,
                                                attributedActionTitles: [AttributedActionTitle]?,
                                                handler: ActionHandler? = nil) -> UIAlertController {
        // Create an instance of UIALertViewController
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)

        // Loop all attributedActionTitles, create an UIAlertAction for each
        // attributedButtonTitles is array of tuple AttributedActionTitle
        guard let titles = attributedActionTitles else { return alertController }
        for title in titles {
            let buttonAction = UIAlertAction(title: title.title, style: title.style, handler: { (action) -> Void in
                    handler?(action)
            })
            alertController.addAction(buttonAction)
        }

        // It's fixed for case viewController is not presented viewcontroller
        viewController.topMostViewController?.present(alertController, animated: true) {}
        return alertController
    }
}

// MARK: -

public extension UIViewController {
    @discardableResult
    func presentAlert(style: UIAlertController.Style = .alert,
                             title: String?,
                             message: String?,
                             actionTitles: [String]?,
                             handler: ActionHandler? = nil) -> UIAlertController {
        return UIAlertController.presentFromViewController(viewController: self, style: style, title: title, message: message, actionTitles: actionTitles, handler: handler)
    }

    @discardableResult
    func presentAlert(style: UIAlertController.Style = .alert,
                             title: String?,
                             message: String?,
                             attributedActionTitles: [AttributedActionTitle]?,
                             handler: ActionHandler? = nil) -> UIAlertController {
        return UIAlertController.presentFromViewController(viewController: self, style: style, title: title, message: message, attributedActionTitles: attributedActionTitles, handler: handler)
    }

    // Get ViewController in top present level
    internal var topPresentedViewController: UIViewController? {
        var target: UIViewController? = self
        if target?.presentedViewController != nil {
            target = target?.presentedViewController
        }
        return target
    }

    // Get top VisibleViewController from ViewController stack in same present level.
    // It should be topViewController if self is a UINavigationController instance
    // It should be selectedViewController if self is a UITabBarContrller instance
    internal var topVisibleViewController: UIViewController? {
        if let nav = self as? UINavigationController {
            return nav.topViewController?.topVisibleViewController
        } else if let tabBar = self as? UITabBarController {
            return tabBar.selectedViewController?.topVisibleViewController
        }
        return self
    }

    // Combine both topPresentedViewController and topVisibleViewController methods, to get top visible viewcontroller in top present level
    internal var topMostViewController: UIViewController? {
        return self.topPresentedViewController?.topVisibleViewController
    }

}

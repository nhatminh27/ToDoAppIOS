//
//  UITableView+Extension.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/30/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

// MARK: Cell

extension UITableViewCell {
    
    static var className: String {
        return String(describing: self)
    }
    static var identifier: String {
        return self.className
    }
    
    /*
     static var nib: UINib {
     return UINib(nibName: self.className, bundle: nil)
     }
     */
    
}

// MARK: Table

extension UITableView {
    
    // Cell
    func registerCustomCell<T: UITableViewCell>(_: T.Type, fromNib: Bool) {
        if fromNib {
            let nib = UINib(nibName: T.nibName, bundle: nil)
            self.register(nib, forCellReuseIdentifier: T.identifier)
        } else {
            self.register(T.self, forCellReuseIdentifier: T.identifier)
        }
    }
    
    func dequeueCustomCell<T: UITableViewCell>(_: T.Type) -> T? {
        let cell = self.dequeueReusableCell(withIdentifier: T.identifier)
        return cell as? T
    }
    
}

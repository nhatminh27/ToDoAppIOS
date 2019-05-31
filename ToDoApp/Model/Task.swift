//
//  Task.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/31/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class Task {
    
    var name: String
    var isSelected: Bool
    var startDay: String = ""
    
    init(_ name: String,_ isSelected: Bool) {
        self.name = name
        self.isSelected = isSelected
    }
    
    init(_ name: String,_ isSelected: Bool,_ startDay: String) {
        self.name = name
        self.isSelected = isSelected
        self.startDay = startDay
    }
    
}

//
//  TodayTableViewCell.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/30/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class TodayTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkbox: CheckBox!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension TodayTableViewCell {
    
    func setData(_ task: Task) {
        titleLabel.text = task.name
        checkbox.isChecked = task.isSelected
    }
    
}

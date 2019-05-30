//
//  LeftMenuTableViewCell.swift
//  ToDoApp
//
//  Created by Cao Nhat Minh on 5/30/19.
//  Copyright © 2019 Cao Nhat Minh. All rights reserved.
//

import UIKit

class LeftMenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var menuTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension LeftMenuTableViewCell {
    
    func setData(_ title: String) {
        self.menuTitleLabel.text = title
    }
    
}

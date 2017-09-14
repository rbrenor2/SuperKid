//
//  TaskListCustomTableViewCell.swift
//  SuperKid
//
//  Created by Breno Ramos on 14/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit

class TaskListCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var taskPointsLabel: UILabel!
    
    @IBOutlet weak var taskDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  ListTableViewCell.swift
//  SuperKid
//
//  Created by Breno Ramos on 05/09/17.
//  Copyright © 2017 brenor2. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

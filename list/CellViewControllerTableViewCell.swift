//
//  CellViewControllerTableViewCell.swift
//  list
//
//  Created by mac33 on 27/1/16.
//  Copyright © 2016 mac33. All rights reserved.
//

import UIKit

class CellViewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var recordImageView: UIImageView!
    
    @IBOutlet weak var recordLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

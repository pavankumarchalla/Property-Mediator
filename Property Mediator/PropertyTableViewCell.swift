//
//  PropertyTableViewCell.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 14/08/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class PropertyTableViewCell: UITableViewCell {

    @IBOutlet weak var ownerName: UILabel!
    @IBOutlet weak var landType: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var imageCount: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

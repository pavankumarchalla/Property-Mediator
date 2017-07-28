//
//  ContactTableViewCell.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 28/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phone: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

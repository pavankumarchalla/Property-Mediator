//
//  RemainderTableViewCell.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 14/08/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class RemainderTableViewCell: UITableViewCell {

    @IBOutlet weak var remainderDate: UILabel!
    @IBOutlet weak var remainderDescriptino: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

//
//  AddPropertyViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 29/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddPropertyViewController: UIViewController {

    @IBAction func cancel(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    @IBAction func saveProperty(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

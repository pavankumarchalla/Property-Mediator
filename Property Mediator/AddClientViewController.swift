//
//  AddClientViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 13/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddClientViewController: UIViewController {

    @IBAction func backButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    


}

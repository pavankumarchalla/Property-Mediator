//
//  AddPhotoViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 11/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ViewPropertyViewController: UIViewController {

    @IBAction func cancel(_ sender: Any) {
    _ = navigationController?.popViewController(animated: true)
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
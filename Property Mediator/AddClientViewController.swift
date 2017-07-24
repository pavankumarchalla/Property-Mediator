//
//  AddClientViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 13/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddClientViewController: UIViewController {

    @IBAction func navigateToClient(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ClientFormViewController") as! ClientFormViewController
        navigationController?.pushViewController(vc,animated: true)
    }
    @IBAction func backButton(_ sender: Any) {
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

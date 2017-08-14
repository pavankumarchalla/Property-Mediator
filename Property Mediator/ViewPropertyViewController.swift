//
//  AddPhotoViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 11/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ViewPropertyViewController: UIViewController {

    @IBAction func back(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)        
    }
    @IBAction func bjbb(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddPropertyViewController") as! AddPropertyViewController
        navigationController?.pushViewController(vc,animated: true)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    

}

//
//  ViewController.swift
//  Property Mediator
//
//  Created by rajamohamed on 28/06/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var propertyNewsAction: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToPropertyNews))
        singleTap.numberOfTapsRequired = 1
        propertyNewsAction.isUserInteractionEnabled = true
        propertyNewsAction.addGestureRecognizer(singleTap)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func navigateToPropertyNews(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        self.present(newViewController, animated: true, completion: nil)
    }


}


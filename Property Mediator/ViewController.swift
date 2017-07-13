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
    @IBOutlet weak var addPhotoAction: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let singlePropertyNewsTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToPropertyNews))
         let photoActionTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToAddPhoto))
        singlePropertyNewsTap.numberOfTapsRequired = 1
        photoActionTap.numberOfTapsRequired = 1
        propertyNewsAction.isUserInteractionEnabled = true
        propertyNewsAction.addGestureRecognizer(singlePropertyNewsTap)
        addPhotoAction.isUserInteractionEnabled = true
        addPhotoAction.addGestureRecognizer(photoActionTap)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func navigateToPropertyNews(){
        let vc = storyboard!.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        let navigationController = UINavigationController(rootViewController: vc)
        self.present(navigationController, animated: true, completion: nil)
    }
    
    func navigateToAddPhoto(){
        let vc = storyboard!.instantiateViewController(withIdentifier: "AddPhotoViewController") as! AddPhotoViewController
        let navigationController = UINavigationController(rootViewController: vc)
        self.present(navigationController, animated: true, completion: nil)
    }


}


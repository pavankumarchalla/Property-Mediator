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
    @IBOutlet weak var addClientAction: UIImageView!
    @IBOutlet weak var remainderAction: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let singlePropertyNewsTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToPropertyNews))
        let photoActionTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToAddPhoto))
        let clientActionTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToAddClient))
        let remainderActionTap = UITapGestureRecognizer(target: self, action: #selector(ViewController.navigateToRemainder))
        singlePropertyNewsTap.numberOfTapsRequired = 1
        photoActionTap.numberOfTapsRequired = 1
        propertyNewsAction.isUserInteractionEnabled = true
        propertyNewsAction.addGestureRecognizer(singlePropertyNewsTap)
        addPhotoAction.isUserInteractionEnabled = true
        addPhotoAction.addGestureRecognizer(photoActionTap)
        addClientAction.isUserInteractionEnabled = true
        addClientAction.addGestureRecognizer(clientActionTap)
        remainderAction.isUserInteractionEnabled = true
        remainderAction.addGestureRecognizer(remainderActionTap)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func navigateToPropertyNews(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        navigationController?.pushViewController(vc,animated: true)
    }
    
    func navigateToAddPhoto(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddPhotoViewController") as! AddPhotoViewController
        navigationController?.pushViewController(vc,animated: true)
    }

    func navigateToRemainder(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "RemainderViewController") as! RemainderViewController
        navigationController?.pushViewController(vc,animated: true)
    }

    
    func navigateToAddClient(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddClientViewController") as! AddClientViewController
        navigationController?.pushViewController(vc,animated: true)
    }


}


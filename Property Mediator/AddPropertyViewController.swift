//
//  AddPropertyViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 29/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddPropertyViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var galleryBtn: UIButton!
    
    var picker:UIImagePickerController?=UIImagePickerController()

    @IBAction func cancel(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    @IBAction func saveProperty(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker?.delegate=self
        galleryBtn.addTarget(self, action:#selector(self.openGallery), for: .touchUpInside)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func openGallery()
    {
        picker!.allowsEditing = false
        picker!.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        
        picker?.allowsEditing = false
        picker?.sourceType = .photoLibrary
        picker?.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        picker?.modalPresentationStyle = .popover
        present(picker!, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
        } else{
            print("Something went wrong")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}

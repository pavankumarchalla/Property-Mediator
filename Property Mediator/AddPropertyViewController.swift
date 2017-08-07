//
//  AddPropertyViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 29/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddPropertyViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var galleryBtn: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    var picker:UIImagePickerController?=UIImagePickerController()
    var imageArray : Array<UIImage> = []
    
    @IBAction func cancel(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    @IBAction func saveProperty(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker?.delegate=self
        collectionView.delegate = self
        collectionView.dataSource = self
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
            imageArray.append(image)
            collectionView.reloadData()
            print(imageArray)
        } else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imageArray.count
    }
   
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! ImageCollectionCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
       cell.imgViewForImageCell.image = imageArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

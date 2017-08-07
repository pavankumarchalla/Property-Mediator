//
//  AddPropertyViewController.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 29/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddPropertyViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UITextFieldDelegate {
    
    @IBOutlet weak var galleryBtn: UIButton!
    
    @IBOutlet weak var constraintTopCollectionView: NSLayoutConstraint!
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    @IBOutlet weak var txtFiledOwnerName: UITextField!
    
    @IBOutlet weak var txtFieldPhoneNo: UITextField!
    
    @IBOutlet weak var txtFieldEmail: UITextField!
  
    @IBOutlet weak var txtFieldAddress: UITextField!
    
    @IBOutlet weak var txtViewPropertyDetails: UITextView!
    
    @IBOutlet weak var viewForImgViewBackground: UIView!
    
    @IBOutlet weak var imgViewForCollectionImages: UIImageView!
    
    
    var picker:UIImagePickerController?=UIImagePickerController()
    
    var imageArray : Array<UIImage> = []
    
    var imageNameArray : Array<NSData> = []
    
    @IBAction func cancel(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    @IBAction func saveProperty(_ sender: Any) {
        if (txtFiledOwnerName.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Owner Name")
            return
        }
        if (txtFieldPhoneNo.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Phone Number")
            return
        }
        if (txtFieldEmail.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Email Address")
            return
        }
        if (txtFieldAddress.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Address")
            return
        }
        
        if (txtViewPropertyDetails.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Property details")
            return
        }
        
        let property = PropertyDBHelper()
    
        property.addnewProperty(ownerName: txtFiledOwnerName.text!, email: txtFieldEmail.text!, address: txtFieldAddress.text!, propertyDetails: txtViewPropertyDetails.text, phone: txtFieldPhoneNo.text!, image: imageNameArray)
        
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker?.delegate=self
        collectionView.delegate = self
        collectionView.dataSource = self
        galleryBtn.addTarget(self, action:#selector(self.openGallery), for: .touchUpInside)
        collectionView.isHidden = true
        constraintTopCollectionView.constant = 30
        let property = PropertyDBHelper()
        print(property.getProperty())
        
        viewForImgViewBackground.isHidden = true
        imgViewForCollectionImages.isHidden = true
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(dismissImageViewAndBackgroundView(sender:)))
        viewForImgViewBackground.addGestureRecognizer(gesture)
        viewForImgViewBackground.isUserInteractionEnabled = true
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
    
    func dismissImageViewAndBackgroundView(sender : UITapGestureRecognizer){
        imgViewForCollectionImages.isHidden = true
        viewForImgViewBackground.isHidden = true
    }
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageArray.append(image)
            collectionView.reloadData()
            collectionView.isHidden = false
            constraintTopCollectionView.constant = 8
            collectionView.backgroundColor = UIColor.clear
            imageNameArray.append(NSData(data: UIImagePNGRepresentation(image)!))
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
        
        viewForImgViewBackground.isHidden = false
        imgViewForCollectionImages.isHidden = false
        
        imgViewForCollectionImages.image = imageArray[indexPath.row]
    }
    
  
    
    func showAlertView(alert:String) {
        let alertView = UIAlertController(title: "Validation Error", message: alert, preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alertView, animated: true, completion: nil)
        
    }

}

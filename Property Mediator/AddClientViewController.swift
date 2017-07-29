//
//  ClientFormViewController.swift
//  Property Mediator
//
//  Created by rajamohamed on 24/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit

class AddClientViewController: UIViewController {

    @IBOutlet weak var notesInput: UITextView!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var panNumber: UITextField!
    @IBOutlet weak var nameInputBox: UITextField!
    
    
    
    @IBAction func saveAction(_ sender: Any) {
        if (nameInputBox.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Name")
            return
        }
        if (panNumber.text?.isEmpty)! {
            showAlertView(alert: "Please PAN Number")
            return
        }
        if (phoneNumber.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Phone Number")
            return
        }
        if (emailAddress.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Email Address")
            return
        }
      
        if (notesInput.text?.isEmpty)! {
            showAlertView(alert: "Please Enter Notes")
            return
        }
        let contactDBHelper = ContactsDBHelper()
        contactDBHelper.addnewContact(name: nameInputBox.text!, email: emailAddress.text!,
                                      notes: notesInput.text!,
                                      pan: panNumber.text!,
                                      phone: phoneNumber.text!)
        UserDefaults.standard.setValue(true, forKey: "submit")
        print("Client Details Added Successfully")
        cancelAction((Any).self)
        
        
        
    }
    @IBAction func cancelAction(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let contactDBHelper = ContactsDBHelper()
        contactDBHelper.getContacts()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showAlertView(alert:String) {
        let alertView = UIAlertController(title: "Validation Error", message: alert, preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        present(alertView, animated: true, completion: nil)
        
    }
    

   

}

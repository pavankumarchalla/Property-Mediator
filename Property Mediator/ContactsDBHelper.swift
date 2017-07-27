//
//  ContactsDBHelper.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 27/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit
import RealmSwift

class ContactsDBHelper {
    
    init() {

    }
    
    
    // Function to get list of all the contacts
    func getContacts() -> Results<Contacts> {
        let contacts = try! Realm().objects(Contacts.self)
        print(contacts.count)
        return contacts
    }
    
    // Function to add a contact
    
    func addnewContact(name : String,
                       email : String,
                       notes : String,
                       pan : String,
                       phone : String) {
        let realm = try! Realm()
        
        try! realm.write {
            let contacts = Contacts()
            contacts.email = email
            contacts.name = name
            contacts.notes = notes
            contacts.pan = pan
            contacts.phone = phone
            realm.add(contacts)
        }
    }

}

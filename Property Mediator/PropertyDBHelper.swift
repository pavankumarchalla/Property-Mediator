//
//  PropertyDBHelper.swift
//  Property Mediator
//
//  Created by rajamohamed on 07/08/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import Foundation
import RealmSwift

class PropertyDBHelper {
    
    init() {
        
    }
    
    
//     Function to get list of all the contacts
    func getProperty() -> Results<Property> {
        let property = try! Realm().objects(Property.self)
        print(property.count)
        return property
    }
    
    // Function to add a contact
    
    func addnewProperty(primaryKey : String,
                        ownerName : String,
                       email : String,
                       address : String,
                       propertyDetails : String,
                       phone : String) {
        let realm = try! Realm()
        try! realm.write {
            let property = Property()
            property.id = primaryKey
            property.email = email
            property.address = address
            property.ownername = ownerName
            property.propertydetails = propertyDetails
            property.phone = phone
            realm.add(property)
        }
    }

    
    
}

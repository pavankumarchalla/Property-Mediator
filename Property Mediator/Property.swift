//
//  Property.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 30/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import UIKit
import RealmSwift

class Property: Object {
    
     static let  PROPERTY_TYPE_HOUSE = 1
     static let PROPERTY_TYPE_LAND = 2
    
    dynamic var id = UUID().uuidString
    dynamic var propertyType :Int = 0
    dynamic var ownername:String = ""
    dynamic var address :String = ""
    dynamic var propertydetails : String = ""
    dynamic var phone : String = ""
    dynamic var email :String = ""
    dynamic var folderId : String = ""
    
    

}

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
    
    dynamic var id = UUID().uuidString
    dynamic var ownername:String = ""
    dynamic var address :String = ""
    dynamic var propertydetails : String = ""
    dynamic var phone : String = ""
    dynamic var email :String = ""
    dynamic var imageList : Array<NSData> = []

}

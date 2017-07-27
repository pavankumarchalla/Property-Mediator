//
//  Contacts.swift
//  Property Mediator
//
//  Created by Raja Mohamed on 27/07/17.
//  Copyright © 2017 sedintechnologies. All rights reserved.
//

import Foundation
import RealmSwift

class Contacts: Object {
    
    dynamic var id = UUID().uuidString
    dynamic var name:String = ""
    dynamic var notes :String = ""
    dynamic var pan : String = ""
    dynamic var phone : String = ""
    dynamic var email :String = ""

}

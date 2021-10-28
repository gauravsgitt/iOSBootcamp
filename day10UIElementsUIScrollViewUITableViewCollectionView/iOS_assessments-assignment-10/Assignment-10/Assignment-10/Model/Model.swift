//
//  Model.swift
//  Assignment-10
//
//  Created by Gaurav Bisht on 18/10/21.
//

import Foundation
struct UsersListItemsModel {
    var name: String?
    var address: String?
    var age: String?
    var otherDetails: String?
    
    init(name: String?, address: String?, age: String?, otherDetails: String?) {
        self.name = name
        self.address = address
        self.age = age
        self.otherDetails = otherDetails
    }
}

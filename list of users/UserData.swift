//
//  UserData.swift
//  list of users
//
//  Created by kalyan on 3/13/26.
//

import Foundation


struct UserData: Codable, Identifiable,Hashable,Equatable{
    
    var id: Int
    var name: String
    var username: String
    var address : Address
    var phone: String
    var website : String
    
    struct Address: Codable,Hashable,Equatable{
        var street : String
        var suite : String
        var city : String
    }

}

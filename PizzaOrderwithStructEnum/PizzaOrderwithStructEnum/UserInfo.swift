//
//  UserInfo.swift
//  PizzaOrderwithStructEnum
//
//  Created by Zahra Alizada on 20.03.24.
//

import Foundation

struct UserInfo {
    var name: String
    var address: String
    var phone: String

    func printUserInfo() {
        print ("Name: \(name), Address: \(address), Phone: \(phone)")
    }
}

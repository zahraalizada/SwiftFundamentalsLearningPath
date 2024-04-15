//
//  UserManager.swift
//  PizzaOrderwithStructEnum
//
//  Created by Zahra Alizada on 20.03.24.
//

import Foundation

class UserManager {
    func getUserInfo() -> UserInfo {
        print("Please enter your name:")
        let name = readLine() ?? ""
        print("Please enter your address:")
        let address = readLine() ?? ""
        print("Please enter your phone:")
        let phone = readLine() ?? ""
        return UserInfo(name: name, address: address, phone: phone)
    }
}

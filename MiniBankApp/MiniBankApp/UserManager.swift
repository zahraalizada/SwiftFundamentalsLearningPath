//
//  UserManager.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

class UserManager {
    func getUserInfo() -> UserInfo {
        print("Adı daxil edin:")
        let name = readLine() ?? ""
        print("E-mail daxil edin:")
        let email = readLine() ?? ""
        print("Doğum tarixi (dd.mm.yyyy - 12.03.2000) daxil edin:")
        let birthday = readLine() ?? ""
        print("Telefon nömrəsini daxil edin:")
        let phone = readLine() ?? ""
        
        return UserInfo(name: name, email: email, birthday: birthday, phone: phone)
    }
}

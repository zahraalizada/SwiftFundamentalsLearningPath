//
//  UserInfo.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

struct UserInfo {
    let name: String
    let email: String
    let birthday: String
    let phone: String
    var cards: [CardInfo] = []
    
    mutating func getCardInfo(_ card : CardInfo) {
        cards.append(card)
    }
    
    func printUserInfo () {
        print("Ad: \(name) ")
        print("E-mail: \(email)")
        print("Doğum tarixi: \(birthday)")
        print("Telefon: \(phone)")
    }
    
    func printCardInfo() {
        print("Kartlarınız:")
        for card in cards {
            card.printCardDetails()
        }
    }
}

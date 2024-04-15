//
//  CardInfo.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

struct CardInfo {
    let type: CardAmountTypeEnum
    let number: String
    let exdate: String
    let cvc:  String
    var balance: String
    
    func printCardDetails() {
        print("Kart adı: \(type.rawValue), Balans: \(balance)")
       }
}

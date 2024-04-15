//
//  CardManager.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

class CardManager {
    var cardTypeArr = [String]()
    
    func printCardTypeArr() {
        for (n, c) in cardTypeArr.enumerated() {
            print("Kartlarınız:")
            print("\(n+1). \(c)")
        }
    }
    
    func getCardTypeList () {
        for (n, c) in CardAmountTypeEnum.allCases.enumerated() {
            print("\(n+1): '\(c.rawValue)'")
        }
    }
    
    func getCardInfo(user: inout UserInfo)  {
        print("Kart nömrəsi:")
        let number = readLine() ?? ""
        print("Bitmə tarixi (yyyy - 2000):")
        let exdate = readLine() ?? ""
        print("CVC:")
        let cvc = readLine() ?? ""
        print("Kartın tipi:")
        getCardTypeList ()
       
        let type = readLine() ?? ""
        var cardType: CardAmountTypeEnum = .daily
        func selectionCardType () {
            switch type {
            case "1":
                cardType = .salary
                cardTypeArr.append(cardType.rawValue)
            case "2":
                cardType = .saving
                cardTypeArr.append(cardType.rawValue)
            case "3":
                cardType = .daily
                cardTypeArr.append(cardType.rawValue)
            default:
                print ("Yanlış məlumat daxil edildi!")
            }
        }
        
        selectionCardType()
        print("Balansı artırın:")
        let balance = readLine() ?? ""
        
        let card = CardInfo(type: cardType, number: number, exdate: exdate, cvc: cvc, balance: balance)
        user.getCardInfo(card)
    }
}

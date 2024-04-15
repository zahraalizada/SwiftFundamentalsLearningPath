//
//  MiniBankApp.swift
//  MiniBankApp
//
//  Created by Zahra Alizada on 24.03.24.
//

import Foundation

struct MiniBankApp {
    
    var checkApp: Bool
    
    mutating func startApp() {
        while (checkApp) {
            let userManager = UserManager()
            let menuManager = MenuManager()
            print("-----------------------------")
            print("MiniBankApp-a xoş gəlmisiniz!")
            print("-----------------------------")
            // USER
            var userInfo = userManager.getUserInfo()
            if !(userInfo.phone.isEmpty) {
                let _: String
                func getOtp () {
                    print("OTP kodunu daxil edin:")
                    _ = readLine() ?? ""
                }
                getOtp()
            }
            // MENU
            func selectionMenu () {
                let number = readLine() ?? ""
                switch number {
                case "0":
                    checkApp = false
                    break
                case "1":
                    if !(userInfo.cards.isEmpty){
                        print("******************************************")
                        userInfo.printCardInfo()
                        print("******************************************")
                        print("Seçim edin: ")
                        menuManager.printMenuList()
                        selectionMenu()
                    } else {
                        print("Yeni kart məlumatlarını daxil edin: ")
                        let cardManager = CardManager()
                        cardManager.getCardInfo(user: &userInfo)
                        cardManager.printCardTypeArr()
                        
                        print("Əvvəlki menuya qayıtmaq üçün 00 seçin.")
                        let selectDoublezero = readLine() ?? ""
                        if !(userInfo.cards.isEmpty), selectDoublezero == "00" {
                            menuManager.printMenuList()
                            selectionMenu()
                        }
                    }
                case "2":
                    let transferManager = TransferManager()
                    let transferInfo = transferManager.getTransferInfo()
                    
                    var cardInfo = CardInfo(type: .daily, number: "1234", exdate: "1111", cvc: "111", balance: "100")
                    
                    if let transferAmount = Double(transferInfo.transferAmount), let cardBalance = Double(cardInfo.balance) {
                        if cardBalance >= transferAmount {
                            print("******************************************")
                            print("Transfer oldu")
                            cardInfo.balance = String(cardBalance - transferAmount)
                            print("Balans: \(cardInfo.balance)")
                            print("******************************************")
                            print("Seçim edin: ")
                            menuManager.printMenuList()
                            selectionMenu()
                        } else {
                            print("******************************************")
                            print("Kifayət qədər balansınız yoxdur!")
                            print("******************************************")
                            print("Seçim edin: ")
                            menuManager.printMenuList()
                            selectionMenu()
                        }
                    }
                case "3":
                    print("******************************************")
                    userInfo.printUserInfo()
                    if !userInfo.cards.isEmpty {
                        userInfo.printCardInfo()
                        print("******************************************")
                        print("Seçim edin: ")
                        menuManager.printMenuList()
                        selectionMenu()
                    } else {
                        print("Kartlarınız:")
                        print("Kart məlumatları tapılmadı.")
                        print("******************************************")
                        print("Seçim edin: ")
                        menuManager.printMenuList()
                        selectionMenu()
                    }
                default:
                    print("******************************************")
                    print("Yanlış seçim edildi.")
                    print("******************************************")
                    print("Seçim edin: ")
                    menuManager.printMenuList()
                    selectionMenu()
                }
            }
            menuManager.printMenuList()
            selectionMenu()
        }
    }
}

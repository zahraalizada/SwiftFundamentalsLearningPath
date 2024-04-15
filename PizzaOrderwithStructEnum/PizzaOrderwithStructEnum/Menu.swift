//
//  Menu.swift
//  PizzaOrderwithStructEnum
//
//  Created by Zahra Alizada on 20.03.24.
//

import Foundation

class Menu{
    enum PizzaType: String, CaseIterable {
        case pepperoni = "Pepperoni Pizza"
        case veggie = "Veggie Pizza"
        case meat = "Meat Pizza"
        case cheese = "Cheese Pizza"
        case margherita = "Margherita Pizza"
        case hawaiian = "Hawaiian Pizza"
        case buffalo = "Buffalo Pizza"
    }
    enum SousType: String, CaseIterable {
        case yogurt = "Yogurt"
        case meksika = "Meksika"
        case ketchup = "Ketchup"
        case mayonese = "Mayonese"
    }
    enum DrinkType: String, CaseIterable {
        case cola = "Coca-Cola"
        case fanta = "Fanta"
        case sprite = "Sprite"
        case milk = "Ayran"
        case juice = "Apple juice"
    }
    
    static func listPizzas() -> [String: String] {
            var list = [String: String]()
            for (index, pizza) in PizzaType.allCases.enumerated() {
                list[String(index+1)] = pizza.rawValue
            }
            return list
        }
    static func listSous() -> [String: String] {
        var list = [String: String]()
        for (index, sous) in SousType.allCases.enumerated() {
            list[String(index+1)] = sous.rawValue
        }
        return list
    }
    static func listDrinks() -> [String: String] {
        var list = [String: String]()
        for (index, drink) in DrinkType.allCases.enumerated() {
            list[String(index+1)] = drink.rawValue
        }
        return list
    }
}

//
//  PizzaOrder.swift
//  PizzaOrderwithStructEnum
//
//  Created by Zahra Alizada on 20.03.24.
//

import Foundation

class PizzaOrder {
    var allProducts = [String: [String]]()
    
    func selectedProducts() -> Bool { // for get user
        for (_, products) in allProducts {
            if !products.isEmpty {
                return true
            }
        }
        return false
    }
    
    func getList(productList: [String: String]) { // for get productList from enum
        for item in productList {
            print("\(item.key). \(item.value)")
        }
    }
    
    func selection(product: String, productList: [String: String], count: Int) { // get user input and pizzalist
        getList(productList: productList)
        var items = [String]()
        
        for _ in 0..<count {
            print("Select your \(product)")
            let selection = readLine() ?? ""
            if selection == "0" {
                break
            } else if let selectedItem = productList[selection] {
                items.append(selectedItem)
            }
        }
        allProducts[product] = items
    }
}

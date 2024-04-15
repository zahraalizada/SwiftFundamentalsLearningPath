//
//  OrderReview.swift
//  PizzaOrderwithStructEnum
//
//  Created by Zahra Alizada on 20.03.24.
//

import Foundation

struct OrderReview {
    var pizzaOrder = PizzaOrder()
    
    func startOrder() {
        print("WELCOME TO ATL PIZZA")
        
        pizzaOrder.selection(product: "pizza", productList: Menu.listPizzas(), count: 3)
        pizzaOrder.selection(product: "sous", productList: Menu.listSous(), count: 3)
        pizzaOrder.selection(product: "drink", productList: Menu.listDrinks(), count: 3)

        if pizzaOrder.selectedProducts() {
            let userManager = UserManager()
            let userInfo = userManager.getUserInfo()

            if let items = pizzaOrder.allProducts["pizza"], !items.isEmpty {
                print("Selected pizzas: \(items)")
            }
            if let items = pizzaOrder.allProducts["sous"], !items.isEmpty {
                print("Selected sous: \(items)")
            }
            if let items = pizzaOrder.allProducts["drink"], !items.isEmpty {
                print("Selected drinks: \(items)")
            }

            userInfo.printUserInfo()
        } else {
            print("No products selected.")
        }
    }
}

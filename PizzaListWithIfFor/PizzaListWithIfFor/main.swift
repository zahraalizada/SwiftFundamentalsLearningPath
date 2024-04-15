//
//  main.swift
//  PizzaList1
//
//  Created by Zahra Alizada on 08.04.24.
//



/*
 Bu proyektde pizza sifarisi edilecek.
   - User maksimum 3 eded pizza sifaris ede biler. (Kod ile yoxlamaq lazimdir)
        - 0'a basanda pizza sifarisi dayansin, novbeti addima kecsin
   - Addimlar:
      - pizza novu secilecek (maksimum 3 eded)
      - sos novu secilecek (maksimum 2 eded)
      - icki novu secilecek (maksimum 2 eded)
   - Sifaris sebete elave olunandan sonraki addimlar
      - Ad soyad
      - Adress
      - Telefon nomresi
 */


import Foundation

let pizzaList = ["1": "Pepperoni Pizza",
                 "2": "Veggie Pizza",
                 "3": "Meat Pizza",
                 "4": "Cheese Pizza",
                 "5": "Margherita Pizza",
                 "6": "Hawaiian Pizza",
                 "7": "Buffalo Pizza"]
let sousList = ["1": "Yogurt",
                "2": "Meksika",
                "3": "Ketchup",
                "4": "Mayonese"]
let drinkList = ["1": "Coca-Cola",
                 "2": "Fanta",
                 "3": "Sprite",
                 "4": "Ayran",
                 "5": "Apple juice"]

print("WELCOME PizzaApp!")

// PIZZA
var pizzaBasket = [String]()
if pizzaBasket.count <= 3 {
    for _ in 0...2 {
        for (key,value) in pizzaList {
            print("\(key) - \(value)")
        }
        print("Pizza seçin: ")
        let pizzaSelection = readLine() ?? ""
        if pizzaSelection == "0" {
            break
        } else {
            let pizzaName = pizzaList[pizzaSelection]
            pizzaBasket.append(pizzaName ?? "")
        }
    }
}

// SOUS
var sousBasket = [String]()
if sousBasket.count <= 2 {
    for _ in 0...1 {
        for (key,value) in sousList {
            print("\(key) - \(value)")
        }
        print("Sous seçin: ")
        let sousSelection = readLine() ?? ""
        if sousSelection == "0" {
            break
        } else {
            let sousName = sousList[sousSelection]
            sousBasket.append(sousName ?? "")
        }
    }
}

// DRINK
var drinkBasket = [String]()
if drinkBasket.count <= 2 {
    for _ in 0...1 {
        for (key,value) in drinkList {
            print("\(key) - \(value)")
        }
        print("Içki seçin: ")
        let drinkSelection = readLine() ?? ""
        if drinkSelection == "0" {
            break
        } else {
            let drinkName = drinkList[drinkSelection]
            drinkBasket.append(drinkName ?? "")
        }
    }
}

// USER
if !pizzaBasket.isEmpty || !sousBasket.isEmpty || !drinkBasket.isEmpty {
    print("Ad: ")
    let name = readLine() ?? ""
    print("Nomre: ")
    let phone = readLine() ?? ""
    print("Adres: ")
    let address = readLine() ?? ""
    
    print("Ad: \(name), Telefon: \(phone), Adres: \(address)")
    
    if !pizzaBasket.isEmpty {
        print("Pizza: \(pizzaBasket)")
    }
    if !sousBasket.isEmpty {
        print("Sous: \(sousBasket)")
    }
    if !drinkBasket.isEmpty {
        print("İçki: \(drinkBasket)")
    }
} else {
    print("Səbət boşdur.")
}

//ORDER REVIEW
/*
 your pizza selection: Meat Pizza, Cheese pizza
 your sous selection: yogurt
 your drink selection: fant, cola
 personal info: memmedov ehmed, adress, telefon
 tesekkruler
 */

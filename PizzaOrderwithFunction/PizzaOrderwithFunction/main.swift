import Foundation

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

func getList(productList: [String: String]) {
    for item in productList {
        print("\(item.key). \(item.value)")
    }
}
func select(product: String, productList: [String:String], count: Int) -> [String] {
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
    print("Your selected \(product) list is \(items)")
    return items
    }
func getUserInfo() -> (name: String, address: String, phone: String) {
    print("Please enter your name:")
    let name = readLine() ?? ""
    print("Please enter your address:")
    let address = readLine() ?? ""
    print("Please enter your phone:")
    let phone = readLine() ?? ""
    return (name, address, phone)
}

//INTRODCUTION
print("WELCOME TO ATL PIZZA")

var pizza = select(product: "pizza", productList: pizzaList, count: 3)
var sous = select(product: "sous", productList: sousList, count: 3)
var drink = select(product: "drink", productList: drinkList, count: 3)

let userInfo = getUserInfo()

if !pizza.isEmpty {
print("Pizza: ", pizza.joined(separator: ", "))
}
if !sous.isEmpty {
print("Sous: ", sous.joined(separator: ", "))
}
if !drink.isEmpty {
print("Drink: ", drink.joined(separator: ", "))
}
print("Name: \(userInfo.name), Addres: \(userInfo.address), Phone: \(userInfo.phone)")

//ORDER REVIEW
/*
 your pizza selection: Meat Pizza, Cheese pizza
 your sous selection: yogurt
 your drink selection: fant, cola
 personal info: memmedov ehmed, adress, telefon
 tesekkruler
 */

import UIKit

enum Size: Double {
    case small = 4.99
    case medium = 5.99
    case large = 6.99
}

struct Flavor {
    var name: String
    var rating: Double
}

struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm, I love \(flavor)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: String?
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: String, totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0
    }
    
    func orderCone(flavor: String, topping: String?, size: Size) -> Cone {
        let newCone = Cone(flavor: flavor, topping: topping ?? "No Topping", size: size)
        if let coneTopping = topping {
            print("Your \(flavor) cone with \(coneTopping) comes to \(size.rawValue)")
            totalSales += newCone.size.rawValue
        }
        return newCone
    }
}

let flavor1 = Flavor(name: "Chocolate Chip Mint", rating: 4.7)
let flavor2 = Flavor(name: "Chocolate PeanutButter Ripple", rating: 5.0)
let flavor3 = Flavor(name: "Birthday Cake", rating: 4.9)
let flavor4 = Flavor(name: "Vanilla Bean", rating: 3.9)
let flavor5 = Flavor(name: "Cookie Dough", rating: 3.8)
let flavor6 = Flavor(name: "Cookies n Cream", rating: 3.8)

var flavors = [flavor1, flavor2, flavor3, flavor4, flavor5, flavor6]

let toppings = ["Gummy Bears", "Sprinkles", "Whipped Cream", "Nuts", "Oreo Crumbles", "Reeses Crumbles"]

func listTopFlavors() {
    var topFlavors = "Our top flavors are "
    for flavor in flavors {
        if flavor.rating > 4.0 {
            topFlavors += "\(flavor.name) "
        }
    }
    print(topFlavors)
}

listTopFlavors()

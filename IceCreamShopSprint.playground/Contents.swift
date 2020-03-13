import UIKit

enum Size: Double {
    case small = 4.99
    case medium = 5.99
    case large = 6.99
}

enum Topping {
    case sprinkles
    case whippedcream
    case gummybears
}
struct Flavor {
    var name: String
    var rating: Double
}

struct Cone {
    let flavor: String
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm, I love \(flavor)!")
    }
}

class IceCreamShop {
    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [Topping]
    var totalSales: Double
    
    init(flavors: [Flavor], sizes: [Size], toppings: [Topping], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = 0.0
    }
}

let flavor1 = Flavor(name: "Chocolate Chip Mint", rating: 4.7)
let flavor2 = Flavor(name: "Chocolate PeanutButter Ripple", rating: 5.0)
let flavor3 = Flavor(name: "Birthday Cake", rating: 4.9)
let flavor4 = Flavor(name: "Vanilla Bean", rating: 3.9)
let flavor5 = Flavor(name: "Cookie Dough", rating: 3.8)
let flavor6 = Flavor(name: "Cookies n Cream", rating: 3.8)

var flavors = [flavor1, flavor2, flavor3, flavor4, flavor5, flavor6]

func listTopFlavors() {
    
}


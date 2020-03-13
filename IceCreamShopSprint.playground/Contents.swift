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
    var flavors: Flavor
    var sizes: Size
    var toppings: Topping
    var totalSales: Double
    
    init(flavors: Flavor, sizes: Size, toppings: Topping, totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
}

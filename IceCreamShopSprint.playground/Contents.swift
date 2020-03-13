import UIKit

// Step 2
enum Size: Double {
    case small = 4.99
    case medium = 5.99
    case large = 6.99
}

// Step 1
struct Flavor {
    var name: String
    var rating: Double
}

// Step 3
struct Cone {
    let flavor: String
    let topping: String?
    let size: Size
    
    func eat() {
        print("Mmm, I love \(flavor)!")
    }
}

// Step 4
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
    
    // Step 6
    func orderCone(flavor: String, topping: String?, size: Size) -> Cone {
        let newCone = Cone(flavor: flavor, topping: topping ?? "No Topping", size: size)
        if let coneTopping = topping {
            print("Your \(flavor) cone with \(coneTopping) comes to \(size.rawValue)")
            totalSales += newCone.size.rawValue
        }
        return newCone
    }
}

// Step 7
let flavor1 = Flavor(name: "Chocolate Chip Mint", rating: 4.7)
let flavor2 = Flavor(name: "Chocolate PeanutButter Ripple", rating: 5.0)
let flavor3 = Flavor(name: "Birthday Cake", rating: 4.9)
let flavor4 = Flavor(name: "Vanilla Bean", rating: 3.9)
let flavor5 = Flavor(name: "Cookie Dough", rating: 3.8)
let flavor6 = Flavor(name: "Cookies n Cream", rating: 3.8)

var flavors = [flavor1, flavor2, flavor3, flavor4, flavor5, flavor6]

let toppings = ["Gummy Bears", "Sprinkles", "Whipped Cream", "Nuts", "Oreo Crumbles", "Reeses Crumbles"]

let sizes = [Size.small, Size.medium, Size.large]

// Step 5
func listTopFlavors() {
    var topFlavors = "Our top flavors are "
    for flavor in flavors {
        if flavor.rating > 4.0 {
            topFlavors += "\(flavor.name) "
        }
    }
    print(topFlavors)
}

// Step 8
let newIceCreamShop = IceCreamShop(flavors: [flavor1, flavor2, flavor3, flavor4, flavor5, flavor6], sizes: sizes, toppings: toppings.description, totalSales: 0)

// Step 9
listTopFlavors()

// Step 10
let newCone = Cone(flavor: flavor5.name, topping: toppings[1], size: Size.large)

// Step 11
newCone.eat()

// Step 12
func printTotalSales() {
    print(newCone.size.rawValue)
}
printTotalSales()

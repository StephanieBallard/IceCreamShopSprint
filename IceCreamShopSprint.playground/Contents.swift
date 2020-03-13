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
    let topping: String
    let size: Size
    
    func eat() {
        print("Mmm, I love \(flavor)!")
    }
}

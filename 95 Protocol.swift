

/*protocols type
Comparable
Hashable
Codable
Equatable
Error
*/
// the protocol kinda look like override in java so u do empty func and then use it in other classes
protocol Flyable{
    func Fly()
}
struct Plane : Flyable{
    func Fly(){
        print("plane is flying")
    }
}
struct Bird : Flyable{
    func Fly(){
        print("bird is flying")
    }
}
let plane = Plane()
plane.Fly()
let bird = Bird()
bird.Fly()
// lets use extensions now do
extension Bird {
    func wings (){
        print("yes")
    }
}
bird.wings()
// can do extension for class, enum, struct, and protocols


// protocol with delegate.

protocol KitchenDelegate {
    func didCookFood(foodName: String)
}
class Kitchen{
    var delegate : KitchenDelegate?
    func cook(food: String){
        delegate?.didCookFood(foodName: food)
    }
}
class Waiter {
    func didCookFood(foodName: String){
        print("\(foodName)is ready")
    }
    var kitchen : Kitchen
    init(kitchen: Kitchen) {
        self.kitchen = kitchen
    }
    func sendOrderToKitchen(foodName: String){
        kitchen.cook(food: foodName)
    }
}
let kitchen = Kitchen()
let waiter = Waiter(kitchen: kitchen)
waiter.sendOrderToKitchen(foodName: "pasta")



/*protocols type
Comparable
Hashable
Codable
Equatable
Error
*/
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

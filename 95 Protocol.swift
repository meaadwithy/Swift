

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

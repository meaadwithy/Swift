class Car{
    var color = "white"
    
    init(myColor : String){
        self.color = myColor
        print("choose color")
        print(myColor)
    }
    
    func moveForward(){
        print("Moving forward")
    }
    var name : String {
        return "My car  is \(color) color"
    }
}
var myCar = Car(myColor : "red")
myCar.moveForward()
print("My color is: "+myCar.color)
print("_______")

var myCar2 = Car(myColor : "rose")
print("_______")

var myCar3 = Car(myColor : "coral")
print(myCar3.name)

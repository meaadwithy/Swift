
//public acsess to all other classes but can't override or make sub

//private only in same class access but need to overrid it in func first like we used to in java with constructers 

//fileprivate only in same package access

//internal is the default 

//to accsess for override & prevents it
//open acsess to all other classes & u can override and make it as subclasses
//final prevents override and make it as subclasses

//________________________________________________


//optional
var name : String? = "Meaad"
print (name) // here the output it will have optinal()
print (name!) //here without optinal() only meaad (bc im telling him im sure its not nil)

var name1 : String? = nil
print (name1) // nil will be printed without optinal
print (name1 ?? "meaadwithy") //(im telling him if its nil then print meaadwithy)

var letter : Character? = nil
if let ter = letter {
    print (letter)
}else {
    print("letter is nil")

____________________________
}
class Hight{
    var high = 5
}
class Rectangle{
    var rectangleHight : Hight?
}
var rec = Rectangle()
rec.rectangleHight?.high


rec.rectangleHight = Hight()
rec.rectangleHight?.high

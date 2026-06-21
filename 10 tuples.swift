
// tuple could have anything  
var info = ("meaad","withy",19)
var personNum = (1,info)
let person = info.0 + info.1
print(person)
print(personNum.0)
print(personNum.1) // output("meaad", "withy", 19)

var (firstName, lastName, age) = info
print(age)

// or u can do it like this from start *||(firstName : "meaad",lastName : "withy", age: 19)||* and this how to print *|| print(info.firstName)||*

// tuble in method
func getInfo() -> (say : String ,you : String , age : Int){
  return ("Hello world ", "Im meaad" , 19)
}
let start = getInfo().say
print(start)
let myInfo = getInfo()
print(myInfo)

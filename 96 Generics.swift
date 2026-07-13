

//gruad like if when its false stop the loop and excute the false statment
func compare (num1:Int , num2:Int){
    guard num1 > num2 else {
        print("\(num2) is greater (false)")
        return
    }
    print("\(num1) is greater (true)")
}

compare(num1: 10, num2: 2)

// generic its overloading func and swap

func swapTwoValues<myDataType>( a: inout myDataType , b: inout myDataType) {
    let temp = a
    a = b
    b = temp
        
    print("a= \(a)  b=\(b)")
}
var someValue = 3
var anotherValue = 7
swapTwoValues(a: &someValue, b: &anotherValue)
/*
var someValue = "tree"
var anotherValue = "sun"
swapTwoValues(a: &someValue, b: &anotherValue)
*/

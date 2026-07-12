

//gruad
func compare (num1:Int , num2:Int){
    guard num1 > num2 else {
        print("\(num2) is greater (false)")
        return
    }
    print("\(num1) is greater (true)")
}

compare(num1: 10, num2: 2)
// generic

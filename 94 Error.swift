
// defer method when there is more than one start executing from down to up.
defer{
    print("this last")
}
defer{
    print("this second")
}
print("this first")

// Error and handles 
/*
*Error types*
Syntax Error  / user syntax incorrect.
Runtime Error / crashes while running.
Logic Error   / crashes while running.
Recoverable Errors / internet problem.
*/
// let say we want password lenght between 7 & 15 so any other number eill be Error
enum LengthError : Error {
    case maxLength
    case minLength
}
func passLenght(lenght: Int) throws -> String{
    if (lenght < 7){
        print("length is less than 7.")
        throw LengthError.minLength
    }else if(lenght > 15){
        print("length is greater than 15.")
        throw LengthError.maxLength
    }
    return "length is valid"
}
let passwordLength = try? passLenght(lenght: 6)
print(passwordLength)

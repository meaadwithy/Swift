
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
func passLength(length: Int) throws -> String{
    if (length < 7){
        print("length is less than 7.")
        throw LengthError.minLength
    }else if(length > 15){
        print("length is greater than 15.")
        throw LengthError.maxLength
    }
    return "length is valid"
}
// there is many why to handle error
//1
let passwordLength = try? passLength(length: 6)
print(passwordLength)
//2
do {
    let passwordLength = try passLength(length:17)
    print(passwordLength)}
catch{
    print(error)
}
//3
do {
    let passwordLength = try passLength(length:17)
    print(passwordLength)
}catch LengthError.maxLength{
    print("reduse length of password to be valid")
}
catch{
    print(error)
}

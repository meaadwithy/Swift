// its func inside func
func op (num1 : Int , num2 : Int , opration: (Int , Int) -> Int) -> Int{
    return opration(num1,num2)
}
func claculate (n1 : Int , n2 : Int) -> Int{
    return n2 * n1
}

op(num1: 2,num2: 3,opration: claculate)
/* so the order for executed goes like this line || op(num1: 2,num2: 3,opration: claculate)
then return opration(num1,num2) which mean claculate(num1,num2) 
go inside func claculate and return n2 * n1 which 6
so he go back to return opration(num1,num2) and return 6 so
op(num1: 2,num2: 3,opration: claculate) return 6
*/

// in closure form it will look like this

func claculate(num1: Int, num2: Int, opration: (Int, Int) -> Int) -> Int {
    return opration(num1, num2)
}

let multiplication = claculate(num1: 2, num2: 3, opration: {
    (num1: Int, num2: Int) -> Int in // u can delete all and do { $0 * $1 } only
    num1 * num2 // u can delete return as short
})
print(multiplication)

let addition = claculate(num1: 2, num2: 3, opration: { $0 + $1 }) // short { $0 + $1 }
print(addition)

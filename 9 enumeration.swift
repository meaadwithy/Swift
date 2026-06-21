
/*enumeation three types we ca use for the (sunday and monday bc thye are related for being in week)
* basic enum
* enum with raw values
* enum with associated values
*/
// basic enum
enum size {
  case XS
  case S
  case M
  case L
  case XL
  // you can do case XS,S,M,L,XL
}


/* u can do it in two way
1
var personSize : size 
personSize = .S

&
2
var personSize = size.S
*/

// with switch
var personSize = size.S

switch personSize {
  case .XS:
    print("size x small")
  case .S:
    print("size small")
  case .M:
    print("size medium")
  case .L:
    print("size large")
  case .XL:
    print("size x large")
}
// with raw values
enum weekDay :Int {
  case sunday = 1
  case monday = 2
  case tuesday = 3
  case wednesday = 4
  case thursday = 5
}
var weekDay = weekDay.monday.rawValue // give u 2

// with associated values
enum workingDay {
  case sunday(hours: Int)
  case monday(minutes: Double)
  case tuesday
  case wednesday(String)
  case thursday
}
var workingDay = workingDay.sunday(hours: 8)

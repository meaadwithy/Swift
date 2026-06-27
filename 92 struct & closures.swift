// if it class will look like this
/*
class UserInfo {
    var name : String = ""
    var email : String = ""
    var password : String ""
}

or like this

class UserInfo {
    var name : String
    var email : String
    var password : String

init(name: String email: String, password: String)
  self.name = name
  self.email = email
  self.password = password
}

and then this
var user1 = UserInfo(name: "Meaad", email: "meaad@gmail.com", password: "MEAAD_00110")

print(user1.name)
user1.email = "meme@gmail.com"
print(user1.email)


so that no error will show 
*/

// here its struct
struct UserInfo {
    var name : String
    var email : String
    var password : String
}
var user1 = UserInfo(name: "Meaad", email: "meaad@gmail.com", password: "MEAAD_00110")

print(user1.name)
user1.email = "meme@gmail.com"
print(user1.email)

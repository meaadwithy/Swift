
class Book{
    open var id : Int = 0
    open var title : String = ""
    open var author : String = ""
    open var price : Double? = nil
    open var quantity : Int? = nil
    
    init(id : Int, title : String, author : String, price : Double? = nil, quantity : Int? = nil){
        
        self.id = id
        self.title = title
        self.author = author
        self.price = price
        self.quantity = quantity
        
    }
    open var toString : String{
        return "ID :\(id) ,Title : \(title) ,Author : \(author) ,Price : \(price!)$ ,Quantity : \(quantity!)"
    }
}



class Library{
    var books : [Book] = []
    func addBook(id : Int, title : String, author : String,price : Double?, quantity : Int?){
        
        let book = Book(id: id, title: title, author: author, price: price, quantity: quantity)
        books.append(book)
        
    }
    
    func deleteBook(id : Int){
        
        for i in 0..<books.count{
            if books[i].id == id{
                books.remove(at: i)
                print("the book has been deleted")
                return
            }
        }
        return print("the book has not been found")
        
    }
    
    func editBook(id : Int, newTitle : String, newAuthor : String,newPrice : Double?, newQuantity : Int?){

        for book in books{
            if book.id == id{
                
                book.title = newTitle
                book.author = newAuthor
                book.price = newPrice
                book.quantity = newQuantity
                
                print("the book has been edited in the system")
                return
            }
        }
        return print("the book has not been edited")
        
    }
    
    func showBooks(){
        for book in books{
            print(book.toString)
        }
    }
    
    func lookForBook(Id : Int?, Title : String?, Author : String?){
        for book in books {
            if Id != nil && book.id == Id!{
                print(book.toString)
                return
            }
            if Title != nil && book.title.lowercased() == Title!.lowercased() {
                print(book.toString)
                return
            }
            if Author != nil && book.author.lowercased() == Author!.lowercased() {
                print(book.toString)
                return
            }
        }
    }
    
    func sellBook (id : Int, quantityToBuy : Int){
        for book in books {
            if book.id == id{
                if book.quantity == nil || book.price == nil {
                    print("book information is incomplete")
                    return
                }
                if book.quantity! >= quantityToBuy{
                    let total = book.price! * Double(quantityToBuy)
                    book.quantity! -= quantityToBuy
                    
                    print("receip")
                    print("Book: \(book.title)")
                    print("Quantity: \(quantityToBuy)")
                    print("Total: \(total)")
                    
                    editBook(id: book.id, newTitle: book.title, newAuthor: book.author, newPrice: book.price, newQuantity: book.quantity)
                    print(book.toString)
                }else{
                    print("book quantity in stock is insufficient")
                }
                return
            }
        }
        print("book not found")
        return
    }
    
}

var library = Library()
library.addBook(id: 1, title: "Start with why", author: "Simon Sinek", price: 80.0, quantity: 10)
library.addBook(id: 2, title: "But how do it know", author: "J. Clark Scott", price: 59.9, quantity: 5)
library.addBook(id: 3, title: "Clean Code", author: "Robert Cecil Martin", price: 50.0, quantity: 8)
library.addBook(id: 4, title: "Zero to One", author: "Peter Thiel", price: 45.0, quantity: 3)
library.addBook(id: 5, title: "You don't know JS", author: "Kyle Simpson", price: 39.9, quantity: 3)

library.showBooks()
print("\n")

library.lookForBook(Id: nil, Title: nil, Author: "Kyle simpson")
print("\n")
library.sellBook(id: 3, quantityToBuy: 4)
print("\n")
library.sellBook(id: 4, quantityToBuy: 4)
library.sellBook(id: 6, quantityToBuy: 5)

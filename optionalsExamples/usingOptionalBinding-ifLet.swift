// With optional binding, though we are still using if, swift provide a way for us to use the if let statement then automatically unwrap it for us like below.

struct Person {
  var firstname: String
 	var middlename: String? 
	var lastname: String
  
  func fullName() -> () {
    
     if let middlename: String = middlename {
         print("Your fullname is \(firstname) \(middlename) \(lastname)")
     } else {
         print("Your fullname is \(firstname) \(lastname)")
     }
    
  }
}

let anotherPerson = Person(firstname: "Abel", middlename: nil, lastname: "Adeyemi")

anotherPerson.fullName() //This will not throw an error


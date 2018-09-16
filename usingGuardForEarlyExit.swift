// Guard provide a way to quickly exit when checking for the optional string and make our code much more cleaner hence there wont be need for if else statement.

struct Person {
  var firstname: String 
	var middlename: String? 
	var lastname: String
  
  func fullName() -> () {
    
     guard let middlename = middlename else {
				print("Your fullname is \(firstname) \(lastname)")  
       	return
     }
     print("Your fullname is \(firstname) \(middlename) \(lastname)")
    
  }
}

let anotherPerson = Person(firstname: "Carlos", middlename: nil, lastname: "Santiago")

anotherPerson.fullName() //This will not throw an error
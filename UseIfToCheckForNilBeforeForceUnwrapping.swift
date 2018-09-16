// Since it was nil that was passed to the variable when we initialized the Person struct, we can use an if statement to check for nil before unwrapping the Person struct like below.

struct Person {
  var firstname: String, var middlename: String?, var lastname: String
  
  func fullName() -> () {
     if (middlename != nil) {
        print("Your fullname is \(firstname) \(middlename!) \(lastname)")  
     } else {
        print("Your fullname is \(firstname) \(lastname)")
     }
     
  }
}

let anotherPerson = Person(firstname: "Carlos", middlename: nil, lastname: "Santiago")

anotherPerson.fullName() //This will not throw an error

// Whenever we use the ! symbol, it is denoted as force unwrapping the optional value, but it a common practice to avoid force unwrapping it, because we can write our code in such a way that swift will automatically unwrap it for us
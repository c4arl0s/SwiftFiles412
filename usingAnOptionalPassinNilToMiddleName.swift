// The problem is that when we passed a nil value to the middlename, we will get a runtime crash which says nil is Unexpected.

Person {
  var firstname: String
  var middlename: String?
  var lastname: String
  
  func fullName() -> () {
     print("Your fullname is \(firstname) \(middlename!) \(lastname)")
  }
}

let anotherPerson = Person(firstname: "Abel", middlename: nil, lastname: "Adeyemi")

anotherPerson.fullName() //This will throw a runtime error

// Before unwrapping, we need to be sure that there’s a value. So therefore we are going to continue the rest of the article with how to check before using (unwrapping) optionals.
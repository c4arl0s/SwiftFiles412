// Using (unwraping) an optional
// The simplest way to unwrap an optional is to add a !after the optional name.

struct Person {
  var firstname: String
  var middlename: String? //we created the optional with the ?
  var lastname: String
  
  func fullName() -> () {
     print("Your fullname is \(firstname) \(middlename!) \(lastname)")
  }
}

let me = Person(firstname: "Abel", middlename: "Agoi", lastname: "Adeyemi")

me.fullName() //will return "Your fullname is Abel Agoi struct Adeyemi"

// Notice the \(middlename!), the ! there is use to unwrap the middlename so we can get the value “abel”.

// The problem is that when we passed a nil value to the middlename, we will get a runtime crash which says nil is Unexpected.


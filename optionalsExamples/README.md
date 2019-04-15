``` swift
// An optional in Swift is a type that can hold either a value or no value. Optionals are written by appending a ?to any type:

var middlename: String?

// The above means that middlename can either be a string or does not contain anything which is represented by the ?. 
// An optional is a kind of container. 
// An optional String is a container which might contain a string. 
// An optional Int is a container which might contain an Int. 
// Think of an optional as a kind of parcel. 
// Before you open it (or “unwrap” in the language of optionals) you won’t know if it contains something or nothing. 
// Its only an Optional value that can be set to nil, and that was the reason for the error when we passed the middlename a value of nil without specifying its a type of Optional.

var red: String = "Red"

red = nil // error: nil cannot be assigned to type 'String'```

``` swift
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

```

``` swift
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

// Before unwrapping, we need to be sure that there’s a value. So therefore we are going to continue the rest of the article with how to check before using (unwrapping) optionals.```

``` swift
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

```

``` swift
class Vehicle {
    var wheels: Int = 4
    var name: String?
}

let car = Vehicle()
print(car.wheels) // trying to unwrapp: print(car.name!) // error

// how to use optional binding

let optionalUserName: String? = "Carlos"

if let userName = optionalUserName { // if you can create what is after if, then print userName
    print(userName)
}
else {print("theres no name")}

// no apply it into a structure

struct Plane {
		var numberOfEngines: Int = 2
		var nameOfPlane: String? = "jet"
		
}
var onePlane = Plane()
print(onePlane)

onePlane.numberOfEngines = 4
onePlane.nameOfPlane = "jumbo"
print(onePlane)

let optionalUsername:String? = "bob42" // create a constant named optionalUsername of type String?, and assign it a string value. It’s an optional, defined with the question mark ?.

if let username = optionalUsername { //  we use optional binding to assign the value of optionalUsername to the constant username if it’s not nil. (Important!)
    print(username) // Finally, when optionalUsername is not nil, we print out the value of username.
}
// Keep in mind that, in the code above, the username constant is only available for use within the conditional body. It’s scope is the conditional body, so you can’t use it outside of the conditional.
```

``` swift
#!/usr/bin/swift

var maybe: String?

print(maybe)
print(maybe == nil)
maybe = "yep"
print(maybe)

// this example didn't hel
// this example didn't helpp
```

``` swift
// In order to use value of an optional, it needs to be unwrapped. Better way to use optional value is by conditional unwrapping rather than force unwrapping using ! operator.

// This is because conditionally unwrapping asks Check if this variable has a value? . If yes, give the value, otherwise it will handle the nil case.

// On the contrary, force unwrapping says This variable does have a value while you use it. Therefore, when you force unwrap a variable that is nil, your program will throw an unexpectedly found nil while unwrapping an optional exception and crash. Some of the techniques for conditional unwrapping are explained below:

var someValue: Int?
var someAnotherValue: Int? = 0
        
if someValue != nil {
	print("It has some value \(someValue!)")
} else {
	print("doesn't contain value")
}
        
if someAnotherValue != nil {
	print("It has some value \(someAnotherValue!)")
} else {
	print("doesn't contain value")
}
```

``` swift
// In Swift, you can also use nil-coalescing operator to check whether a optional contains a value or not. 
// It is defined as (a ?? b). 
// It unwraps an optional a and returns it if it contains a value, or returns a default value b if a is nil.

var someValue: Int?
let defaultValue = 5
let unwrappedValue: Int = someValue ?? defaultValue // check if someValue has a value, if not, asign the defaultValue = 5
print(unwrappedValue)

// another example, now the value of oneValue is 10

var oneSomeValue: Int? = 10
let oneDefaultValue = 5
let oneUnwrappedValue: Int = oneSomeValue ?? oneDefaultValue
print(oneUnwrappedValue)

// However, in the above program, optional variable oneSomeValue is initialized with value 10. 
// So, the nil coalescing operator successfully unwraps the value from oneSomeValue. 
// Therefore, the statement someValue ?? defaultValue returns 10 and the statement print(oneUnwrappedValue) outputs 10 in the console.

```

``` swift
#!/usr/bin/swift

func getHaterStatus() -> String? {
	if weather == "sunny" {
			return nil
	} else { return "hate" }
}

var status: String
status = getHaterStatus(weather: "rainy")

```

``` swift
#!/usr/bin/swift

var message : String = "swift is awesome" // ok
message = nil // Compile error

// it gave us an error because in swift we have to use optionals.

```

``` swift
var someValue: Int?
var someAnotherValue: Int! = 0
       
if let temp = someValue {
	print("It has some value: \(temp)") 
} else {
	print("doesn't contain value")
}
        
if let temp = someAnotherValue {
	print("It has some value: \(temp)")
} else {
	print("doesn't contain value")      
}```

``` swift
// How to declare an Optional?

var someValue: Int?
var someAnotherValue: Int!

print(someValue)
print(someAnotherValue)
```

``` swift
// The simplest way to create an optional in swift is to add ? in front of the type like below

var middlename: String?

// Another way is using the Optional keyword like below

// var middlename: Optional<String>```

``` swift
#!/usr/bin/swift
// ================================= 
var someValue: Int!
var unwrappedValue: Int = someValue 
// ================================= 
// crashes due to this line


```

``` swift
// You can also create an unwrapped optional as:

let someValue: Int! = 5

print(someValue)

// When you run the program, the output will be: 5 (nope, why?)

// In the above program, Int! creates a unwrapped optional, which automatically unwraps the value while you access it so that you don't need to everytime append the ! character.

// Be certain while you use these kinds of optionals, the variable will always need to have a value when you access it. If you don't, you will get a fatal error crash.

```

``` swift
struct Person {
  var firstname: String
  var middlename: String? //we created the optional with the ?
  var lastname: String
  
  func fullName() -> () {
     print("Your fullname is \(firstname) \(middlename!) \(lastname)")
  }
}

let me = Person(firstname: "Abel", middlename: "Agoi", lastname: "Adeyemi")

me.fullName() //will return "Your fullname is Abel Agoi Adeyemi"

// Notice the \(middlename!), the ! there is use to unwrap the middlename so we can get the value “abel”. The problem is that when we passed a nil value to the middlename, we will get a runtime crash which says nil is Unexpected.
```

``` swift
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

// Whenever we use the ! symbol, it is denoted as force unwrapping the optional value, but it a common practice to avoid force unwrapping it, because we can write our code in such a way that swift will automatically unwrap it for us```

``` swift
#!/usr/bin/swift

struct Person {
    var age: Int
    var residence: Residence?
}
 
struct Residence {
    var address: Address?
}
 
struct Address {
    var buildingNumber: String
    var streetName: String
    var apartmentNumber: String?
}

if let theResidence = person.residence {
    if let theAddress = theResidence.address {
        if let theApartmentNumber = theAddress.apartmentNumber {
            print("He/she lives in apartment number \(theApartmentNumber).")
        }
    }
}

if let theApartmentNumber = person.residence?.address?.apartmentNumber {
  print("He/she lives in apartment number \(theApartmentNumber).")
}


```

``` swift
func testFunction() {
	let someValue: Int? = 5

	guard let temp = someValue else { return }
	print("It has some value \(temp)")
}

testFunction()```

``` swift
// In order to use value of an optional, it needs to be unwrapped. Better way to use optional value is by conditional unwrapping rather than force unwrapping using ! operator.

// This is because conditionally unwrapping asks Check if this variable has a value? . If yes, give the value, otherwise it will handle the nil case.

// On the contrary, force unwrapping says This variable does have a value while you use it. Therefore, when you force unwrap a variable that is nil, your program will throw an unexpectedly found nil while unwrapping an optional exception and crash. Some of the techniques for conditional unwrapping are explained below:
```

``` swift
import Foundation

class LivingBeing {
    var age :Int?
    init(age:Int?) {
        if let age = age { self.age = age }
    }
}

class Human: LivingBeing {
    var name:String?
    init(name:String?, age:Int?) {
        if let name = name { self.name = name }
        super.init(age: age ?? 0)
    }
}

class Animal: LivingBeing {
    var isMammals: Bool? 
    init(isMammals:Bool?, age:Int?) {
        if let isMammals = isMammals { self.isMammals = isMammals }
        super.init(age: age ?? 0)
    }
}

let livingBeingArray = [Animal(isMammals:true, age:12), Human(name:"Abhilash",age:25)]
print(livingBeingArray)
```

``` swift
struct Book {
  var name: String
  var publicationYear: Int
} 
let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and the Prisoner of Azkaban", publicationYear: 1999)
let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]


```

``` swift
let someValue: Int? = 5

print(someValue)		// it will print: Optional(5)
print(someValue!)		// it will print: 5 // Unwrapping the value of someValue.

// However, remember, this kind of unwrapping mechanism should only be used when you are certain that the optional will sure have a value when you access it.
```


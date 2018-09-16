#!/usr/bin/swift

struct Person {
  var name: String
	
	func sayHello()
	{	print("Hello, there! my name is \(name)!")
	}

}
let firstPerson = Person(name: "Jasmine")
print(firstPerson.name)

let secondPerson = Person(name: "Carlos")
print(secondPerson.name)

// after initialization, each instance inherits all the properties and features of the structure.

let person = Person(name: "Jazmine")
person.sayHello()




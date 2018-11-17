// refering to the object with self
class Employee {
	var name = "undefined"
	func changeName(name: String) {
	self.name = name
}
}

let employee1 = Employee()
employee1.changeName(name: "Martin")
print("Name: \(employee1.name)")

// the self keyword in the changeName() method, represents the object created from de Employee class
// and helps the system to understand what we are referring to when we use the word name.
// Empleyee.name = name 


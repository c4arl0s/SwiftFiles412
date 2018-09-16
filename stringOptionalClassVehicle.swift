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

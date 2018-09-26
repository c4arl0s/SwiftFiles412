#!/usr/bin/swift

// Difference between type method and type instance method

// In Swift, types are either named types or compound types. 
// Named types include classes, structures, enumerations, and protocols. 
// In addition to user-defined named types, Swift defines many named types such as arrays, dictionaries, and optional values.
/*  (Let's ignore compound types for now since it doesn't directly pertain to your question.) */

// To answer your questions, suppose that I create a user defined class called Circle (this is just an example):

class Circle {

    static let PI = 3.14

    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() {
        return PI*radius
    }

    static func printTypeName() {
        print("Circle")
    }
}
// If I want to construct an individual object of the Circle class then I would be creating an instance. For example:

let myCircleInstance = Circle(radius: 4.5)
let anotherCircleInstance = Circle(radius: 23.1)

// The above are objects or instances of Circle. 
// Now I can call instance methods on them directly. The instance method defined in my class is area.

let areaOfMyCircleInstance = myCircleInstance.area()

// Now, a type method is a method that can be called directly on the type without creating an instance of that type.

// For example:

Circle.printTypeName()

// Notice that there is a static qualifier before the func. This indicates that it pertains to the type directly and not to an instance of the type.

// now applying to properties:

// In my Circle example, the properties are defined as:

// static let PI = 3.14
// var radius: Double
// The property PI is a type property; it may be accessed directly by the type

// Circle.PI
// The property radius is an instance property of the type; it may be accessed by an instance of the type. Using the variables we created earlier:

// I can do this; it will be 4.5
myCircleInstance.radius

// And this; it will be 23.1
anotherCircleInstance.radius

// But I CANNOT do this because radius is an instance property!
Circle.radius


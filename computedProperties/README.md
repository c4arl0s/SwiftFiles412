``` swift
// A computed property with a getter but no setter is known as a read-only computed property. 
// A read-only computed property always returns a value, and can be accessed through dot syntax, but cannot be set to a different value.


struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"```

``` swift
#!/usr/bin/swift

// Different from stored properties, computed properties are built with a getter and a setter, performing necessary code when accessed and set. Computed properties must define a type:

var pi = 3.14

class Circulo {
    var radio = 0.0
    var circunferencia: Double {
        											get {return pi * radio * 2}
															set {radio = nuevoValor / pi / 2}
															} 
}

let circulo = Circulo()				// crea un objeto
circulo.radius = 1						// set igual 1 el radio
print(circulo.circunferencia) // Prints "6.28"		
circulo.circunferencia = 14		// si le asigno un valor a la circunferencia, la clase calcula el valor del radio, con set: WOOOOOOOOOOW!!!!
print(circulo.radio) // Prints "2.229..."
```

``` swift
#!/usr/bin/swift

struct Temperature {
	var celsius: Double
  var fahrenheit: Double {
			return celsius*1.8 + 32
		}
	var kelvin: Double {
			return celsius + 273.15
		}
}

let instanceOfTemperature = Temperature(celsius: 20.0)
print(instanceOfTemperature.fahrenheit)
print(instanceOfTemperature.kelvin)



```

``` swift
#!/usr/bin/swift
// In addition to stored properties, classes, structures, and enumerations can define computed properties, which do not actually store a value. Instead, they provide a getter and an optional setter to retrieve and set other properties and values indirectly.
//============================================================================================
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rectangule {
    var origin = Point()
    var size = Size()

    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
// ==========================================================================================
// first we create an instance of Rectangule called square
var square = Rectangule(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
// after this, we create a constant with the value of the center of the instance square.
let initialSquareCenter = square.center
print(initialSquareCenter)
// next assign a new center of the square (15,1)
square.center = Point(x: 15.0, y: 1.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// ==========================================================================================
// This example defines three structures for working with geometric shapes:
// Point encapsulates the x- and y-coordinate of a point.
// Size encapsulates a width and a height.
// Rect defines a rectangle by an origin point and a size.

//===============================================================
// If a computed property’s setter does not define a name for the new value to be set, a default name of newValue is used. Here’s an alternative version of the Rect structure, which takes advantage of this shorthand notation:

struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
```


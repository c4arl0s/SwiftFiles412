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

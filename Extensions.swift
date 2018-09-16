#!/usr/bin/swift

// Extensions add new functionality to an existing class, structure, enumeration, or protocol type. 

// Extensions in Swift can:

// Add computed instance properties and computed type properties
// Define instance methods and type methods
// Provide new initializers
// Define subscripts
// Define and use new nested types
// Make an existing type conform to a protocol

// Extensions can add new functionality to a type, but they cannot override existing functionality.

// extension SomeType {
    // new functionality to add to SomeType goes here
// }

// extension SomeType: SomeProtocol, AnotherProtocol {
    // implementation of protocol requirements goes here
// }

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")
// Prints "A marathon is 42195.0 meters long"


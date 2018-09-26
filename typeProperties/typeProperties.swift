#!/usr/bin/swift

// Type properties are properties on the type itself, not on the instance. 
// They can be both stored or computed properties. 
// You declare a type property with static:

// ======================================================
struct Perro {
    static var noise = "Guau!"
}
print(Perro.noise) // Prints "Guau!"
// ======================================================

// In a class, you can use the class keyword instead of static to make it overridable. 
// However, you can only apply this on computed properties:


// ======================================================
class Animal {
    class var noise: String {return "Animal noise!"}
}

class Pig: Animal {
    override class var noise: String {return "Oink oink!"} 
}
// ======================================================
// This is used often with the singleton pattern.

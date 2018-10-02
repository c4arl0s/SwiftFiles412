struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}
// Type properties are queried and set with dot syntax, just like instance properties. 
// However, type properties are queried and set on the type, not on an instance of that type. For example:

print(SomeStructure.storedTypeProperty)								// Prints "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)								// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)						// Prints "6"
print(SomeClass.computedTypeProperty)									// Prints "27"

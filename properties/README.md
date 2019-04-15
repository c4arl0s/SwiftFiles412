``` swift
// Instance properties are properties that belong to an instance of a particular type. Every time you create a new instance of that type, it has its own set of property values, separate from any other instance.

// You can also define properties that belong to the type itself, not to any one instance of that type. There will only ever be one copy of these properties, no matter how many instances of that type you create. These kinds of properties are called type properties.

// Type properties are useful for defining values that are universal to all instances of a particular type, such as a constant property that all instances can use (like a static constant in C), or a variable property that stores a value that is global to all instances of that type (like a static variable in C).

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
}```

``` swift
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
rangeOfFourItems.firstValue = 6 // this will report an error, even though firstValue is a variable property
```

``` swift
// In its simplest form, a stored property is a constant or variable that is stored as part of an instance of a particular class or structure. Stored properties can be either variable stored properties (introduced by the var keyword) or constant stored properties (introduced by the let keyword).

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6
```

``` swift
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
```

``` swift
#!/usr/bin/swift
// Properties can be added to a class or struct (technically enums too, see "Computed Properties" example). 
// These add values that associate with instances of classes/structs:

class Dog {
    var name = ""
		var age = 0			// ask question about this
		var color = ""
}

// In the above case, instances of Perro have a property named nombre of type String. The property can be accessed and modified on instances of Perro:

let myDog = Dog()						// crea un objeto
let myOldDog = Dog()			// crea un segundo objeto 

myDog.name = "Manchas"			// le pone nombre al objeto
myOldDog.name = "Capitan"	// le pone nombre al perro viejo

myDog.age = 10
myOldOdg.age = 15

myDog.color = "negro"

print(myDog.name)
print(myOldDog.name)

print("El nombre de mi perro es: \(miPerro.nombre)")
print("El nombre de mi perro viejo es: \(miPerroViejo.nombre)")

print("la edad de mi perro es: \(miPerro.edad)")
print("la edad de mi perro viejo es: \(miPerroViejo.edad)")

// These types of properties are considered stored properties, as they store something on an object and affect its memory.


```

``` swift
// A lazy stored property is a property whose initial value is not calculated until the first time it is used. 
// You indicate a lazy stored property by writing the lazy modifier before its declaration.

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")```

``` swift
// The examples that follow use two stored type properties as part of a structure that models an audio level meter for a number of audio channels. 
// Each channel has an integer audio level between 0 and 10 inclusive.

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0		// if it change, change for all instances.
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)
```


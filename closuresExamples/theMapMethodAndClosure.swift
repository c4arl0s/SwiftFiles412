#!/usr/bin/swift

let digitNames = [ 0: "zero", 1: "One", 2: "two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine" ]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
print(strings)

// The map(_:) method calls the closure expression once for each item in the array. 
// You do not need to specify the type of the closureʼs input parameter, number, because the type can be inferred from the values in the array to be mapped.

// strings is inferred to be of type [String]
// its value is ["OneSix", "FiveEight", "FiveOneZero"]

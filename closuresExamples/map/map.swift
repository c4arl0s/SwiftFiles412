// initial array

let names = ["Johnny","Nellie","Aaron","Rachel"]

var fullNames: [String] = []

// creating an array of full names with for loop

for name in names {
										let fullName = name + " Smith"
										fullNames.append(fullName)
}
print(fullNames)

// NOW YOU CAN USE function map()

let anotherNames = ["Carlos", "Trini", "Norma"]
let anotherFullNames = anotherNames.map { (name) -> String in
														return name + " Santiago"
}
print(anotherFullNames)

// A SHORTENED VERSION OF THE map() Function is as follow:


let moreNames = ["Carlos", "Trini", "Norma"]
let moreFullNames = moreNames.map { $0 + " Santiago" }
print(anotherFullNames)


// Closure syntax can be difficult. It's helpful to pause and breakdown the syntax of each example. Try to identify the function call, the parameter, an the closure syntax.

// what is the function call ? (map())
// what is the closure paramteter ? ( the code in the curly braces {} )
// what does the $0 represent ? (the individual object in the array thats being worked with)



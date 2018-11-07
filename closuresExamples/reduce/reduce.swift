// the reduce() function combines all of the values in an array into one value.
// it takes a starting value and a closure that dictates how to combine the items.

// FIRST CHECK THE CODE USING FOR LOOP

let numbers = [8,6,7,5,3,9]
var total = 0
for number in numbers {
			total = total + number
}
print("print total using a for loop: \(total)")

// NOW USING reduce() function
// remember 0 is the inital value
// $0 represents the value of all items
// $1 represents the value of the new item you are reducing into the tota// $0 represents the value of all items
// $1 represents the value of the new item you are reducing into the total

let anotherNumbers = [8,6,7,5,3,9]
let anotherTotal = anotherNumbers.reduce(0) { (currentTotal, newValue) -> Int in
																								return currentTotal + newValue
}
print("print total using reduce() function:: \(anotherTotal)")

// Using reduce() function and shortened syntax
// remember 0 is the inital value


let moreNumbers = [8,6,7,5,3,9]
let newTotal = moreNumbers.reduce(0, {$0+$1})
print("print total using reduce() function and srhotened syntax: \(newTotal)")


// the filter() function creates a new array with only the objects from the starting array that match a specifici use case.

// filter takes a closure parameter that returns true or false to determinate if the object should be included in the new array.

// HERE IS A TRADITIONAL METHOD USING A FOR LOOP.

let numbers = [4,8,15,16,23,42]
var numbersLessThan20: [Int] = []
for number in numbers {
		if number < 20 {
				numbersLessThan20.append(number)
}}
print("this output was using a for loop: \(numbersLessThan20)")

// NOW IS PRESENTING USIGN filter() FUNCTION

let anotherNumbers = [4,8,15,16,23,42]
let anotherNumbersLessThan20 = anotherNumbers.filter{ (number) -> Bool in
																							return number < 20
}
print("this output was using filter() function: \(anotherNumbersLessThan20)")

// as you lern more about swift and closure syntax, you will find filter is more concise and results in cleaner code.

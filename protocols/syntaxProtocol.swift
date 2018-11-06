// Syntax
// firts review the syntax of a function

func sum(numbers: [Int]) -> Int {
  // Code that adds together the numbers array.
  return total
}

// Now compare that with the syntax of a closure:
// closures can be passed around as values and execute later.

let sumClosure = { (numbers: [Int]) -> Int in
									// code here
									return total
								 }

// now you can then use the closure to perform the action by calling sumClosure

let sum = sumClosure([1,2,3,4])
print(sum)

// Closures typically dont have a name
// they can be stored as a variable
// they can be stored as an argument.
// developers call them: anonymous functions: functions without name.

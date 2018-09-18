// In order to use value of an optional, it needs to be unwrapped. Better way to use optional value is by conditional unwrapping rather than force unwrapping using ! operator.

// This is because conditionally unwrapping asks Check if this variable has a value? . If yes, give the value, otherwise it will handle the nil case.

// On the contrary, force unwrapping says This variable does have a value while you use it. Therefore, when you force unwrap a variable that is nil, your program will throw an unexpectedly found nil while unwrapping an optional exception and crash. Some of the techniques for conditional unwrapping are explained below:

var someValue: Int?
var someAnotherValue: Int! = 0
        
if someValue != nil {
	print("It has some value \(someValue!)")
} else {
	print("doesn't contain value")
}
        
if someAnotherValue != nil {
	print("It has some value \(someAnotherValue!)")
} else {
	print("doesn't contain value")
}

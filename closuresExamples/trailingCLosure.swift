func someSimpleFunction(message: String, someClosure: ()->()) {
		print(message)
    someClosure()
}

someSimpleFunction(message: "Hello Swift Community!") { print("Hello World! from closure") }

// function someSimpleFunction() accepts a closure as a final parameter.
// So, while calling the function, instead of passing the closure as an argument, we have used trailing closure.
// Because of trailing closure, we haven't specified the parameter name for the closure which makes the code shorter and more readable.
// It is not mandatory to write trailing closure. 
// However, it is recommended for readability purpose when a function accepts a closure as a final argument.
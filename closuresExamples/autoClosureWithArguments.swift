func someSimpleFunction(_ someClosure: @autoclosure (String)->(String)) { 
			let result = someClosure("Hello World")
			print(result)
}
someSimpleFunction("Good Morning")

// we have marked the closure ()->() to be of type autoclosure with @autoclosure attribute.
// you don’t have to add { } around the function parameter as someClosure: (print("Hello World! from closure"))
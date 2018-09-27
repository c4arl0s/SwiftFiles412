#!/usr/bin/swift

func someSimpleFunction(someClosure: @autoclosure ()->(), msg:String) { 
			print(msg)	
			someClosure()
}
someSimpleFunction(someClosure: (print("Hello World! from closure")), msg: "hola")

// we have marked the closure ()->() to be of type autoclosure with @autoclosure attribute. 
// you don’t have to add { } around the function parameter as someClosure: (print("Hello World! from closure"))


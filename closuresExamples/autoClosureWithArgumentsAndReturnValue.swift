#!/usr/bin/swift

func someSimpleFunction(_ someClosure: @autoclosure ()->(String)) { 
			let res = someClosure()
			print(res) 
}

someSimpleFunction("Good Morning")

// In the above program, we've defined a function that takes no parameter but returns a String ( ()->(String) ). 
// We passed the autoclosure "Good Morning" to the function. This is also the return value of the closure.
// So, when we called someClosure() inside the function, it returned the value Good Morning.
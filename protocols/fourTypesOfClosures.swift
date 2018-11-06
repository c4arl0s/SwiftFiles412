let printClosure = { () -> void in
		print("this closure does not take any parameters and does not return a value")
}

let printAnotherClosure = { (string: String) -> void in
		// A closure with parameters and no return value
		print(string)
}

let randomNumberClosure = { () -> Int in
		// code that returns a random number
		// A closure with no parameter and a return value
}

let anotherRandomNumberClosure = { (minValue: Int, maxValue: Int) -> int in 
		// Code that returns a random number between minValue and maxValue
}

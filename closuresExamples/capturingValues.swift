#!/usr/bin/swift

// A closure can capture constants and variables from the surrounding context in which it is defined.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {		// makeIncrementer returns a function
	var runningTotal = 0				
	func incrementer() -> Int {																		// func incrementer returns an Int
			runningTotal += amount
			return runningTotal
	}
	return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()


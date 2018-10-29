#!/usr/bin/swift
// A closure can capture constants and variables from the surrounding context in which it is defined.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {		// makeIncrementer returns a function
	var runningTotal = 0																					// func incrementer returns an Int
	func incrementer() -> Int {					
			runningTotal += amount
			return runningTotal
	}
	return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()

// the return type of makeIncrementer is () -> Int. It returns a function


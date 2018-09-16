#!/usr/bin/swift
// Local variables are defined within a function, method, or closure:

func printSomething() {
    let localString = "I'm local!"
    print(localString)
}

func printSomethingAgain() {
     print(localString) // error
}
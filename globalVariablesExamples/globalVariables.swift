#!/usr/bin/swift
// Global variables are defined outside of a function, method, or closure, and are not defined within a type (think outside of all brackets). 
// They can be used anywhere:

let globalString = "I'm global!"
print(globalString)

func useGlobalString() {
    print(globalString) // works!
}

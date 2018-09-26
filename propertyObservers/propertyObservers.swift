#!/usr/bin/swift
var myProperty = 5 {
    willSet {
        print("Will set to \(newValue). It was previously \(myProperty)")
    }
    didSet {
        print("Did set to \(myProperty). It was previously \(oldValue)")
} }

myProperty = 6

// prints: Will set to 6, It was previously 5
// prints: Did set to 6. It was previously 5
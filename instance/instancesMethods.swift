#!/usr/bin/swift

// In Swift, we differentiate between instance- and type methods. Instance methods are what you are most probably familiar with. 
// Instance methods are what you call on the instance of a class

class SomeClass {
	func instanceFunc() { print("instance func called") }
}

let instance = SomeClass()
instance.instanceFunc()

#!/usr/bin/swift

// On the other hand, we have Type methods. 
// Type methods are called directly on the type instead of the instance.
// In order to specify a method as a type method, we have to use the statickeyword.

class SomeClass {
	func instanceFunc() { print("instance func called") }
	static func typeMethod () { print("type method called") }
}

let instance = SomeClass()

instance.instanceFunc()
SomeClass.typeMethod()

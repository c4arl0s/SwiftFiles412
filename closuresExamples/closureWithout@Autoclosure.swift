#!/usr/bin/swift

func someSimpleFunction(someClosure: ()->(), msg: String) { 
			print(msg)
     	someClosure() // remember how is called the closure once you created it
}
someSimpleFunction(someClosure: {print("this is the first argument of the function and it is called later in function")}, msg:"this is the second argument")
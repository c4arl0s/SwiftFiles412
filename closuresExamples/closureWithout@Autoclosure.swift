func someSimpleFunction(someClosure:()->(), msg:String) { 
			print(msg)
     	someClosure()
}
someSimpleFunction(someClosure: ({ print("Hello World! from closure")
}), msg:"Hello Swift Community!")
func someFunction() {

	guard false else {
		print("Condition not met")
		return
	}
	print("Condition met")
}

someFunction()
print("Hello after function call")
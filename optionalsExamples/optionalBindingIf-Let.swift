var someValue: Int?
var someAnotherValue: Int! = 0
       
if let temp = someValue {
	print("It has some value: \(temp)") 
} else {
	print("doesn't contain value")
}
        
if let temp = someAnotherValue {
	print("It has some value: \(temp)")
} else {
	print("doesn't contain value")      
}
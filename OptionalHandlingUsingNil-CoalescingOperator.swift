// In Swift, you can also use nil-coalescing operator to check whether a optional contains a value or not. 
// It is defined as (a ?? b). 
// It unwraps an optional a and returns it if it contains a value, or returns a default value b if a is nil.

var someValue: Int?
let defaultValue = 5
let unwrappedValue: Int = someValue ?? defaultValue // check if someValue has a value, if not, asign the defaultValue = 5
print(unwrappedValue)






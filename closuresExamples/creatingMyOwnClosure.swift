// Before we get too technical we could see how to transform a function into a closure.

var someClosure = { (_ days: Int, _ name: String) -> String in
return "\(name), closures are coming for you in \(days) days" }



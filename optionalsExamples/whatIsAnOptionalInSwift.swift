// An optional in Swift is a type that can hold either a value or no value. Optionals are written by appending a ?to any type:

var middlename: String?

// The above means that middlename can either be a string or does not contain anything which is represented by the ?. 
// An optional is a kind of container. 
// An optional String is a container which might contain a string. 
// An optional Int is a container which might contain an Int. 
// Think of an optional as a kind of parcel. 
// Before you open it (or “unwrap” in the language of optionals) you won’t know if it contains something or nothing. 
// Its only an Optional value that can be set to nil, and that was the reason for the error when we passed the middlename a value of nil without specifying its a type of Optional.

var red: String = "Red"

red = nil // error: nil cannot be assigned to type 'String'
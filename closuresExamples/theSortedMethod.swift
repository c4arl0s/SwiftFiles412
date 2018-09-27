#!/usr/bin/swift

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
print("list of names = \(names)")
var reversedNames = names.sorted(by: backward)
print("list of names, backwards = \(reversedNames)")

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
print("list of names, using Closure Expression Syntax = \(reversedNames)")

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print("list of names, using Inferring Type From Context = \(reversedNames)")

reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
print("list of names, using Implicit Returns from Single-Expression Closures = \(reversedNames)")

reversedNames = names.sorted(by: { $0 > $1 } )
print("list of names, using closure with shorthand argument = \(reversedNames)")

reversedNames = names.sorted(by: >)
print("list of names, using Operator Methods: \(reversedNames)")


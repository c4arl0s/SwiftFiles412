#!/usr/bin/swift
print("Please enter your name:")

if let name = readLine() {
    print("Hello, \(name)!")
} else {
    print("Why are you being so coy?")
}

print("TTFN!")
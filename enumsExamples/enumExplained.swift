#!/usr/bin/swift
// An enum is considered as a structured data type that can be modified without needing to change say a String or Int multiple times within your code, for example, the below shows how easy it would be to change something by accident and forget to change it somewhere else.

let myString = "test"

if myString == "ttest" {
  // Doesn't execute because "ttest" is the value assigned to "myString"
}

// With an enum we can avoid this and never have to worry about changing the same thing more than once.

enum MyEnum: String {
  case Test = "test"
}

let enumValue = MyEnum.Test

if enumValue == MyEnum.Test {
  // Will execute because we can reassign the value of "MyEnum.Test" unless we do so within "MyEnum"
}


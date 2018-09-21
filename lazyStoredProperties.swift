#!/usr/bin/swift

lazy var veryExpensiveVariable = expensiveMethod()

// Often it is assigned to a return value of a closure:

lazy var veryExpensiveString = { () -> String in
    var str = expensiveStrFetch()
    str.expensiveManipulation(integer: arc4random_uniform(5))
    return str
}()

``` swift
#!/usr/bin/swift
var myFontSize = 10 
{
    willSet(newFontSize) {print("Will set font to \(newFontSize), it was \(myFontSize)")}
    didSet(oldFontSize) {print("Did set font to \(myFontSize), it was \(oldFontSize)")} 
}
myFontSize = 6
```

``` swift
#!/usr/bin/swift
 struct StepCounter {
    var totalSteps: Int = 0 {
        willSet { print("About to set totalSteps to \(newValue)")}
        didSet { if totalSteps > oldValue { print("Added \(totalSteps - oldValue) steps")}}
    }
 }
 var stepCounter = StepCounter()
 stepCounter.totalSteps = 40
 stepCounter.totalSteps = 100
```

``` swift
#!/usr/bin/swift
var myProperty = 5 {
    willSet {
        print("Will set to \(newValue). It was previously \(myProperty)")
    }
    didSet {
        print("Did set to \(myProperty). It was previously \(oldValue)")
		} 
}

myProperty = 6

// prints: Will set to 6, It was previously 5
// prints: Did set to 6. It was previously 5```

``` swift
// willSet is called just before the value is stored.
// didSet is called immediately after the new value is stored.

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

//=============================
let stepCounter = StepCounter()
print(stepCounter)
//=============================
stepCounter.totalSteps = 360
//=============================
stepCounter.totalSteps = 896
//=============================

```


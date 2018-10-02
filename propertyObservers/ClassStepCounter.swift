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


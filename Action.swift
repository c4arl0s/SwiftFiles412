#!/usr/bin/swift

enum Action {
    case jump
    case kick
    case move(distance: Float)  // The "move" case has an associated distance
}

var doingSomething = Action.kick
print(doingSomething)

switch doingSomething {
case .jump: print("jump")
case .kick: print("kick")
case .move(let distance): print("moving \(distance)")
}


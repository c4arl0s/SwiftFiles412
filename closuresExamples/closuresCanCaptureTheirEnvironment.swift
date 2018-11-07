// in previous lessons about scope and how any constant or variable thats declared within braces is defined in the local scope and is not accessible by any other scope.
// Closures work somewhat differently.

// Closures are often written using values or functions that are defined in the same scope as the closure, but not within the closure braces.

// considere the following closure that animates the backgroundColor from its current color to red:

animate {
		self.view.backgroundColor: .red
}

// what if the view property was removed from the screen during this animation ?
// Would the code crash since view would no longer be an accesible property ?
// no worries, Swift is smart. Based on the context, a closure can sense, or capture, sorrounding constants and variables. 
// this means that, if the view would typically be deallocated when it is removed from the screen, the animate closure will keep the view in memory until the closure is complete.

// this inteligence enables closures to use those constants and variables safely and to modify them within the closure block. 
// similarly, swift wants to make it clear that the owner of the view property must also be kept in memory until the animation completes, so it requires the self keyword.


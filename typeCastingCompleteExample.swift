class House {
    var windows: Int = 0
    init(windows: Int) { self.windows = windows }
}
class Villa: House {
    var hasGarage: Bool = false
    init(windows: Int, hasGarage:Bool) {
        self.hasGarage = hasGarage
        super.init(windows: windows)
    }
}
class Castle: House {
    var towers: Int = 0
    init(windows: Int, towers:Int)
    {
        self.towers = towers
        super.init(windows: windows)
    }
}
//+------------------+------------------+--------------------+-------------------+--------------------------+
//|                  |                  | HOUSE (superclass) |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+
//| Upcasting:       |                  |                    |                   |                          |
//| Villa is a Hoyse | Villa (subclass) |                    | Castle (subclass) | Downcasting:             |
//|                  |                  |                    |                   | is this House a Castle=? |
//|                  |                  |                    |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+

// Back to type casting. 
// With type casting you can treat an instance of a class as an instance of another superclass or subclass within its class hierarchy.
// ---------------------------------------------------------------
// Looking back on the class hierarchy, we can do this:
// We can downcast an instance of type House to Villa or Castle
// We can upcast an instance of type Villa or Castle to House
// We can’t cast an instance of type Castle to Villa, or vice-versa
// ----------------------------------------------------------------
// Let’s look at an example:
//+------------------+------------------+--------------------+-------------------+--------------------------+
//|                  |                  | HOUSE (superclass) |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+
//| Upcasting:       |                  |                    |                   |                          |
//| Villa is a Hoyse | Villa (subclass) |                    | Castle (subclass) | Downcasting:             |
//|                  |                  |                    |                   | is this House a Castle=? |
//|                  |                  |                    |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+


// ==================================================
let house: House = Castle(windows: 200, towers: 4)
// ==================================================

// You declare a constant named house of type House
// You initialize it with an instance of Castle, and provide it with 200 windows and 4 towers. // This is called upcasting. 
// Because House and Castle are in the same class hierarchy, 
// you can assign an instance of Castle to a variable of type House. 
// As explained earlier, it’s like saying: a castle is a house.
// The upcast is implicit, so you don’t explicitly code it. You could though, like this:

// ============================================================
let oneHouse: House = Castle(windows: 200, towers: 4) as House
// ============================================================

// What’s so interesting about the above code, 
// is the type of house and it’s actual value. Let’s check the dynamic type of house, like this:

// =============================================
print(type(of: oneHouse))   // Output: Castle
// =============================================

// You can use the type(of:) function to get the type of a value. And it prints out Castle! Wait a minute…
// How can house be of type Castle when we clearly declared it with type House? And it gets more interesting. Check this out:

// print(house.towers) // Output: error: value of type 'House' has no member 'towers'

// What’s happening?
// We try to print out the value of house.towers, which should be 4, because we initialized house with an instance of Castle.
// The class Castle has a property towers, so we should be able to get its value with house.towers. Right?
// No! The type of house is House, and that class doesn’t have a property towers.

// Remember when we talked about data and its representation? 
// About the difference between the actual data, and the way you treat it? 
// The above examples explain that difference.

// Internally, the value of house has data as represented by the Castle class. 
// It has windows and towers! But we’re describing it with the House class, and as a result, we can’t access the towers property.

// Type casting can get you out of that mess by letting you treat an instance of a class as an instance of another class, within its own class hierarchy.
// Here’s how. First, let’s start again with that implicit cast:
//+------------------+------------------+--------------------+-------------------+--------------------------+
//|                  |                  | HOUSE (superclass) |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+
//| Upcasting:       |                  |                    |                   |                          |
//| Villa is a Hoyse | Villa (subclass) |                    | Castle (subclass) | Downcasting:             |
//|                  |                  |                    |                   | is this House a Castle=? |
//|                  |                  |                    |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+


// =======================================================
let anotherHouse: House = Castle(windows: 200, towers: 4)
// =======================================================

// Even though anotherHouse has a value of type Castle, it’s described as type House, so we can’t get to anotherHouse.towers. Yet…
// Let’s downcast house to type Castle. Like this:

// ===================================
let castle: Castle = house as! Castle
// ===================================

// You use the as! keyword to force-downcast one type to another. More on that in the next chapter.
// You can now get to towers, like this:

// ===============================
print(castle.towers) // output: 4
// ===============================

// There we go! The value was the same all along, 
// but now we merely described it using a different type, so we can get to the property towers.

// Here, I’ll prove to you that we’ve been using the same object all along:
//+------------------+------------------+--------------------+-------------------+--------------------------+
//|                  |                  | HOUSE (superclass) |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+
//| Upcasting:       |                  |                    |                   |                          |
//| Villa is a Hoyse | Villa (subclass) |                    | Castle (subclass) | Downcasting:             |
//|                  |                  |                    |                   | is this House a Castle=? |
//|                  |                  |                    |                   |                          |
//+------------------+------------------+--------------------+-------------------+--------------------------+

// =====================================
print(house === castle) // output: true
// =====================================

// The above code tests identicality with the === operator. 
// Both house and castle refer to the exact same object. 
// The House and Castle classes are merely used to describe them.

// Can we cast between unrelated types? No, you can only downcast or upcast. 
// You can’t cast from Castle to Villa, like this:

// ===========================================================
let oneVilla = Villa(windows: 15, hasGarage: true)
let oneCastle = Castle(windows: 150, towers: 8)
// let result = OneVilla as! oneCastle // cast from ‘Villa’ to unrelated type ‘Castle’ always fails.
// ===========================================================

// Pfew! Let’s quickly summarize…
// * With type casting you can treat an instance of a class as an instance of another superclass or subclass within its class hierarchy.
// * You can downcast and upcast between subclasses and superclasses in the same hierarchy, but not sideways between subclasses of the same superclass
// * A type describes data, and you can use type casting to treat that data as from a different type
//==========================================================

// HOW TO USE “as”, “is”, “as!” AND “as?”

// You can use 4 different syntaxes for casting in Swift:
// * as for upcasting
// * is for type checking
// * as! for force downcasting
// * as? for optional downcasting

//UPCASTING WITH “as”

// Upcasting is implicit in most cases, so you’ll almost never use the as keyword when coding your app. 
// As explained in the previous chapter, upcasting is possible when a subclass “is a” superclass, like how a Villa is a House

// TYPE CHECKING WITH “is”

// You use the type check operator is to check the type of an instance. 
// The expression returns a value of type Bool, so it’s perfect to use in a conditional.
// Like this:

// ===========================================================
let tintagel: Castle = Castle(windows: 300, towers: 1)
if tintagel is Castle {
    print("Using the is keyword into my code: It's a castle!")
} else if tintagel is Villa {
    print("It's a villa!")
}
// ===========================================================

// The above expression tintagel is Castle returns true, so the first conditional clause is executed.
// The is operator returns true for any implicit upcast in the class hierarchy. 
// When you use is to check for a superclass type, it also returns true. Like this:

// =====================================================
let firstHouse: House = Castle(windows: 123, towers: 3)
print(firstHouse is House)   // Output: true
print(firstHouse is Castle)  // Output: true
print(firstHouse is Villa)   // Output: false
// =====================================================

// In the example above, you see that:
// firstHouse is a House (superclass)
// firstHouse is a Castle (subclass)
// firstHouse is not a Villa (unrelated subclass)

// OK, let’s get down to downcasting! (Pun intended.)

// FORCE DOWNCASTING WITH “as!”

// * Downcasting is the opposite of upcasting.
// * When you upcast, you cast from a subclass to a superclass (upwards)
// * When you downcast, you cast from a superclass to a subclass (downwards)

// An upcast is succeeds because a Villa is a House. 
// That same rule doesn’t always apply to downcasting, because a House is not always a Villa. 
// As a result, downcasting can fail.

// You can use two kinds of downcasting:
// * Force downcasting with as!
// * Optional downcasting with as?

// If you’re familiar with optionals, you probably see where this is going.
// * An expression that uses as? will return an optional value. When the downcast fails, the expression returns nil. When it succeeds, it returns a value.
// * An expression that uses as! will return a non-optional value. When the downcast fails, your code crashes with a fatal error. When it succeeds, it returns a value.

// You should only use force downcasting with as! if you’re sure that the downcast will succeed. When a downcast fails with as!, your app crashes. This is similar to force unwrapping an optional.
// Let’s look at an example. We’re still using the House, Villa and Castle classes we defined earlier.

// ============================================================================
// let secondHouse: House = Castle(windows: 200, towers: 4)
// print(secondHouse.towers) // This doesn't work, House does not have "towers"

let secondCastle: Castle = house as! Castle
print(castle.towers) // This works, Castle does have "towers"
// ============================================================================

// In the above code we’re creating an instance of class Castle and assign it to a variable house of type House. 
// Even though the instance is of type Castle, we can’t access the property towers because the type of house is House.
// In the second part, we’re force downcasting house to type Castle with the as! keyword. This results in a non-optional value of type Castle that’s assigned to the constant castle, and subsequently we print out the value of the towers property.

// Again, it’s not the value that changes! We’re working with an instance of Castle throughout the code. What changes is the type we use to describe or treat that value.

// OPTIONAL DOWNCASTING WITH “as?”

// It’s often more convenient to use optional downcasting with the as? keyword. 
// Optional downcasting is exactly the same as force downcasting, except that the expression returns nil when the downcast fails.
// Here’s an example:

// ==============================================================================================
let thirdHouse: House = Castle(windows: 200, towers: 4)
print(thirdHouse.windows) 				// Output: 200

let thirdVilla: Villa? = house as? Villa
print(thirdVilla?.hasGarage) 			// Output: nil
// ==============================================================================================

// Here’s what happens:
// * First, we define a constant named thirdHouse of type House and assign an instance of Castle to it.
// * Then, we print out the value of house.windows. This is OK, because Castle inherits the windows property from House.
// * Then, we try to downcast house to type Villa and assign the result to the constant villa. However, the downcast fails because the value of house is of type Castle, and Castle and Villa can’t be cast to each other.
// * Finally, the expression thirdVilla?.hasGarage is nil, because villa is nil. (It uses optional chaining.)

// Note that the type of thirdVilla is Villa? – an optional – because as? results in an optional. Like any other optional, you’ll have to unwrap it.

// Let’s look an example that’s more practical.

// ==============================================================================================
var houses = [
    Castle(windows: 100, towers: 3),
    Villa(windows: 20, hasGarage: false),
    Castle(windows: 999, towers: 12),
    House(windows: 3),
    Castle(windows: 93, towers: 8),
    Villa(windows: 42, hasGarage: true)
]
// ==============================================================================================

// In the above example you’re creating an array with instances of Castle, House and Villa. 
// Thanks to polymorphism, the type of houses is inferred as [House].

// Why? Because every instance in the array either is a House, or has House as its superclass. Make no mistake though, there are instances of 3 different classes in this array!

// Then, let’s write a simple for-in loop. Like this:

// ==============================================================================================
for house in houses
{
    if let castle = house as? Castle {
        print("A castle with \(castle.windows) windows and \(castle.towers) towers")
    }
    else if let villa = house as? Villa {
        print("A villa with \(villa.windows) windows and \(villa.hasGarage ? "a" : "no") garage")
    }
    else {
        print("Just a house with \(house.windows) windows")
    }
}
// ===============================================================================================
// Here’s what happens. The code loops over every item house in the houses array. 
// The code within the squiggly brackets { and } is executed for every item in houses.

// Within the loop you use optional casting and optional binding to check the type of house, and subsequently invoke one of three conditional clauses.

// * When house is an instance of Castle, the first if clause executes
// * When house is an instance of Villa, the second if clause executes
// * When house is neither of those two, the else clause is executed

// Let’s look at that first expression house as? Castle. 
// Because it uses optional downcasting, the result of that expression is an optional. 
// It has Castle? as its type. So when the downcast succeeds, it returns a value, and when it fails, it returns nil.

// You can combine that with optional binding. 
// As a result, a value is assigned to castle when the optional downcast succeeds. 
// When it fails, the conditional is passed over, and the next else if clause is evaluated.

// In the above code we’re also combining if, else if and else to control the flow of our code. We respond to cases where house is either Castle or Villa, and when neither of those are true, the else class is invoked. At this point, house is of type House, so we can access house.windows.

// The expression villa.hasGarage ? "a" : "no" uses the ternary conditional operator to evaluate whether villa.hasGarage is true or false, and respond accordingly. When hasGarage is true, the expression returns the string "a", and when it’s false, the string "no" is returns. As a result, the complete string reads either “… has a garage” or “… has no garage”.

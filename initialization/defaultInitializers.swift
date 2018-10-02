// Swift provides a default initializer for any structure or class that provides default values for all of its properties and does not provide at least one initializer itself. The default initializer simply creates a new instance with all of its properties set to their default values.

// This example defines a class called ShoppingListItem, which encapsulates the name, quantity, and purchase state of an item in a shopping list:

class ShoppingListItem {
    var name: String?					// optional string
    var quantity = 1					// integer to 1
    var purchased = false			// bolean to false
}
var item = ShoppingListItem()
print(item)

// Because all properties of the ShoppingListItem class have default values, and because it is a base class with no superclass, ShoppingListItem automatically gains a default initializer implementation that creates a new instance with all of its properties set to their default values.

// 


// another example with a structure

struct howToOrder {
		var model: String?			// as model is an optional String it initialize to nil
		var cv = 0.15						// double cv
		var size = 0.5					// double size
		var material = "ductil iron"
}
var howToOrderCustomer = howToOrder()
print(howToOrderCustomer)

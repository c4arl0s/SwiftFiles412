#!/usr/bin/swift

// Model - struct, useful for managing large amounts of data
// View - Anything that extends UIView, more often than not this is a controller you manage on the storyboard
// Controller - class, typically used only for views such as UIView controllers and UITableView

// Moving on a struct as I said is used for managing large amounts of data, for instance, humans are a good example as we can use a struct to manage each person in a contact list.

struct Birthday {
  var day: Int
  var month: Int
  var year: Double
}

struct Person {
  var firstName: String
  var lastName: String
  var birthday: Birthday
  var phoneNumber: String
  var emailAddress: Int
}

// For each contact you have you would create a new Person object that contains basic details along with a Birthday struct for complete reusability, 
// the benefit to using the Birthday struct is the fact we can extend it without breaking our code,
// for example, if we needed an easy way to format the person's birthday we can add an additional function without affecting the rest of our code.


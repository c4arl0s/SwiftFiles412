``` swift
import Foundation
// Codable is a protocol that allows classes and structures to be encoded to o decoded from different types of data such as JASON or plist.

// The Codable Protocol declares two methods that a Class must implement so that its instances can be encoded and decoded, or seriealize, into data that can be written to a file on disk.

// plist format is similar to a representation of a Dictionary in a file that can be saved to disk.

// class Note: Codable { }

// create an example

struct Note: Codable {
	let title: String
	let text: String
	let timestamp: Date
}

// create an instance of Note

let newNote = Note(title: "new note", text: "this is a new note", timestamp: Date())

// now look at the following example to see how to use encoder object to encode a value to a plist.

let propertyListEncoder = PropertyListEncoder()
if let encodableNote = try? propertyListEncoder.encode(newNote) {
	print(encodableNote)
	print("it prints the number of bytes stored in the Data Object")
}

// PropertyListEncoder's encode(_:) method is a throwing function, requiring you to use either the do-try-catch syntax or the keyword try?.

// by using try? in this example, encode will simply return optional Data instead of throwing any errors.

// if you look at the console, you will see that printing encodedNote simple prints the number of bytes stored in the Data Object. 

// you have successfully encoded newNote which is an instante of Note Structure.

```

``` swift
import Foundation
// decoding your data appears similar to the previus code, but is done in reverse and uses a PropertyListDecoder. 

struct Note: Codable {
	let title: String
	let text: String
	let timestamp: Date
}

let newNote = Note(title: "new note", text: "this is a new note", timestamp: Date())
let propertyListEncoder = PropertyListEncoder()
if let encodedNote = try? propertyListEncoder.encode(newNote) {
	print(encodedNote)
	print("it prints the number of bytes stored in the Data Object")

	let propertyListDecoder = PropertyListDecoder()
	if let decodedNote = try? propertyListDecoder.decode(Note.self, from: encodedNote) {
	print(decodedNote)
	print("as you can see decodedNote is the structure note")
	}
}

```


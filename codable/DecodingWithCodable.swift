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


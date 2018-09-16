struct Book {
  var name: String
  var publicationYear: Int
} 
let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and the Prisoner of Azkaban", publicationYear: 1999)
 
let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]

override func tableView(_ tableView: UITableView, canEditRowAt
indexPath: IndexPath) -> Bool {
return true
}


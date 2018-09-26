#!/usr/bin/swift
// ============ first of all define a Class and initialize.
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}
// ============ subclass: Movie
class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
// ============= Subclass: Song
class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
// array of instancess classes
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley") ]
// the type of "library" is inferred to be [MediaItem] 😲

//============ Checking Type ===============
var movieCount = 0
var songCount = 0

// Use the type check operator (is) to check whether an instance is of a certain subclass type.
// Counting How many objects are type Movie and how many objects are type Song

for item in library {
    if item is Movie { movieCount += 1 }
    else if ite m is Song { songCount += 1 }
}
print("number of movies is: \(movieCount)")
print("number of Songs is: \(songCount)")

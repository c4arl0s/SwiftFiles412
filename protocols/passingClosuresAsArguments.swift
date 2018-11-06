// many commonly used collection functions and UIKit take closures as arguments.
// now that you know to create a closure, you can learn about passing a closure into a function.

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
						return firstTrack.trackNumber < secondTrack.trackNumber
}
print(sortedTracks)

// remember when you access the function sorted it shows up like:
// sorted(by: (Track, Track) -> bool) // a closure!
// the compiler can infer that the two parameters within the closure will be of type Track.


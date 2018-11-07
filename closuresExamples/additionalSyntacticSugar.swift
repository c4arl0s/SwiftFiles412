// Additional Syntactic Sugar

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
return firstTrack.starRating < secondTrack.starRating
}

// swift can infer that the closure must return a Bool value.

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) in
	return firstTrack.starRating < secondTrack.starRating
}

// swift knows the function expects two instances

let sortedTracks = tracks.sorted { return $0.starRating < $1.starRating }

// when a closure has one line, swift will automatically return the result, so yo can remove a return keyword.

let anotherSortedTracks = tracks.sorted { $0.starRating < $1.starRating }



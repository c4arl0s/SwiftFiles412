// Additional Syntactic Sugar

struct Track {
	var trackNumber: Int
}

let tracks = [Track(trackNumber: 3), Track(trackNumber:2), Track(trackNumber: 1)]

// you may be wondering why the by argument label was omitted during xcode autocompletion of the closure. If your were being as verbose as possible, the sorted(by:) method would be called like this:

let sortedTracks = tracks.sorted { (firstTrack, secondTrack) -> Bool in
return firstTrack.starRating < secondTrack.starRating
}

// when a closure is the last argument of a function,
// you can move the closing parentheses after the second-to-last argument
// and leave the curly braces at the end.
// when the functions only argument is a closure, the parentheses can be ommited entirely.
// this is called trailling closure syntax.


// for example:

func performRequest(url: String, response: (code: Int) -> Void)
{ }

// the first argument:   url: String
// the second argument 
// is a response closure that 
// contains the data at the specified URL:  response: (Data) -> Void

// here is what it would look like to call the function using trailling closure syntax.
// The closing parentheses is moved to the previous argument,
// the response argument label is dropped,
// and the curly braces hang nicely off the end.

performRequest(url: "https://www.apple.com") { (data} in
	print(data)
}







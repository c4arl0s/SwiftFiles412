// If your custom type has a stored property that is logically allowed to have “no value”—perhaps because its value cannot be set during initialization, or because it is allowed to have “no value” at some later point—declare the property with an optional type. Properties of optional type are automatically initialized with a value of nil, indicating that the property is deliberately intended to have “no value yet” during initialization.

class SurveyQuestion {
    var text: String
    var response: String?

    init(text: String) {
        self.text = text
    }

    func ask() { 	// remeber this is an instance method
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// Prints "Do you like cheese?"

cheeseQuestion.response = "Yes, I do like cheese."
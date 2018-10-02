// You can assign a value to a constant property at any point during initialization, as long as it is set to a definite value by the time initialization finishes. Once a constant property is assigned a value, it can’t be further modified.

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let beetsQuestion = SurveyQuestion(text: "How about beets?") // this constant cannot be changed
beetsQuestion.ask() // appplying an instance Method
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)" // assigning a value to response variable after de initialization.
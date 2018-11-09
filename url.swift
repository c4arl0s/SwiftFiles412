import UIKit
import PlaygroundSupport

let url = URL(string: "https://www.apple.com")!

let task = URLSession.shared.dataTask(with: url){ (data, response, Error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume() // execute task
PlaygroundPage.current.needsIndefiniteExecution = true
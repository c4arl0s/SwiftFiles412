import Foundation

let urlstring = "http://www.hotpaw.com/rhn/hotpaw/"
var shouldKeepRunning = true
var sum = 0

class Delegate : NSObject, URLSessionDataDelegate
{
    func urlSession(_ session: URLSession, 
                dataTask: URLSessionDataTask, 
                didReceive data: Data)
    {
        let s = String(data: data, encoding: .utf8 ) ?? ""
        let n = s.characters.count
        sum += n
        print("got data \(n), total =  \(sum) ");
    }

    func urlSession(_ session: URLSession, 
                task: URLSessionTask,
                didCompleteWithError error: Error?) {
                if (error != nil) {
                  print(
                    "Download error: \(error!.localizedDescription)")
                }
                DispatchQueue.main.async { 
                    shouldKeepRunning = false
                    print("url completion handler called")
                }
    }
}

    let config  = URLSessionConfiguration.default
    let session = URLSession(configuration: config, 
                delegate: Delegate(), 
                delegateQueue: nil )

    guard let url = URL( string: urlstring ) else { 
                fatalError("Could not create URL object") 
    }

    print("start")
    
    session.dataTask( with: url ).resume()    

    let runLoop = RunLoop.current
    while (   shouldKeepRunning 
           && runLoop.run(mode:   .defaultRunLoopMode, 
                          before: .distantFuture ) ) {
    }

    print("end")

// eoimport Foundation

let urlstring = "http://www.hotpaw.com/rhn/hotpaw/"
var shouldKeepRunning = true
var sum = 0

class Delegate : NSObject, URLSessionDataDelegate
{
    func urlSession(_ session: URLSession, 
                dataTask: URLSessionDataTask, 
                didReceive data: Data)
    {
        let s = String(data: data, encoding: .utf8 ) ?? ""
        let n = s.characters.count
        sum += n
        print("got data \(n), total =  \(sum) ");
    }

    func urlSession(_ session: URLSession, 
                task: URLSessionTask,
                didCompleteWithError error: Error?) {
                if (error != nil) {
                  print(
                    "Download error: \(error!.localizedDescription)")
                }
                DispatchQueue.main.async { 
                    shouldKeepRunning = false
                    print("url completion handler called")
                }
    }
}

    let config  = URLSessionConfiguration.default
    let session = URLSession(configuration: config, 
                delegate: Delegate(), 
                delegateQueue: nil )

    guard let url = URL( string: urlstring ) else { 
                fatalError("Could not create URL object") 
    }

    print("start")
    
    session.dataTask( with: url ).resume()    

    let runLoop = RunLoop.current
    while (   shouldKeepRunning 
           && runLoop.run(mode:   .defaultRunLoopMode, 
                          before: .distantFuture ) ) {
    }

    print("end")

// eoff


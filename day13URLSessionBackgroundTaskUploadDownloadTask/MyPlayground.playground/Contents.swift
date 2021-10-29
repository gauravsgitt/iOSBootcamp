import UIKit
import PlaygroundSupport


/*
 Question 4 - Make a get request using URLSessionDataTask. You can use the “https://jsonplaceholder.typicode.com” to have some mocked responses.
 */

//let config = URLSessionConfiguration.default
//let session = URLSession(configuration: config)
//let url1 = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//let task = session.dataTask(with: url1){
//
//    (data, response, error) in
//    guard let httpResponse = response as? HTTPURLResponse,
//          httpResponse.statusCode == 200 else {
//        return
//    }
//    guard let data = data else {
//        print(error.debugDescription )
//        return
//    }
//    if let result = NSString(data: data, encoding: String.Encoding.utf8.rawValue) as String? {
//        print(result)
//    }
//
//    PlaygroundPage.current.finishExecution()
//}
//task.resume()


/*
Question 5 - Make a post request using URLSessionDataTask.  You can use the “https://jsonplaceholder.typicode.com” to have some mocked responses.
 */

//let url2 = URL(string: "https://jsonplaceholder.typicode.com/todos")
//guard let requestUrl = url2 else { fatalError() }
//
//// Prepare URL Request Object
//var request = URLRequest(url: requestUrl)
//request.httpMethod = "POST"
//
//// HTTP Request Parameters which will be sent in HTTP Request Body
//let postString = "userId=300&title=Saif's task&completed=true";
//
//// Set HTTP Request Body
//request.httpBody = postString.data(using: String.Encoding.utf8);
//
//// Perform HTTP Request
//let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//
//    // Check for Error
//    if let error = error {
//        print("Error took place \(error)")
//        return
//    }
//
//    // Convert HTTP Response Data to a String
//    if let data = data, let dataString = String(data: data, encoding: .utf8) {
//        print("Response data string:\n \(dataString)")
//    }
//
//}
//task.resume()

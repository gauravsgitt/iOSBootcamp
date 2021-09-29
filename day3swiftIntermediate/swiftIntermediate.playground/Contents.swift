import UIKit
//import Foundation
//import CoreGraphics

//Question 1: Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an array of strings) and “sifts out” the beans from the other groceries. The function should take one argument that has a parameter name called list, and it should return a named tuple of the type (beans: [String], otherGroceries: [String]).

func siftBeans(arr : [String]) -> (beans : [String],otherGrocewries : [String]){
    var beans = [String]()
    var groceries = [String]()
    for grocery in arr{
        if grocery.contains("beans"){
            beans.append(grocery)
        }else{
            groceries.append(grocery)
        }
    }
    return (beans,groceries)
}
var groceryList = ["green beans","milk","black beans","pinto beans","apples"]
let result = siftBeans(arr : groceryList)
print(result)


//Question 2: Make a calculator class with a function name “equals” that take an enum case as value like multiply, subtraction, addition, square root, division.

enum Operators {
    case multiply
    case substraction
    case addition
    case squareRoot
}

func equals(chooseOperator: Operators, value1: Double, value2: Double){
    
    switch chooseOperator {
    case .addition:
        print("addition of \(value1) and \(value2) is : " + "\(value1 + value2)")
    case .substraction:
        print("substraction of \(value1) and \(value2) is : " + "\(value1 - value2)")
    case .multiply:
        print("multiply of \(value1) and \(value2) is : " + "\(value1 * value2)")
    case .squareRoot:
        print("squareRoot of \(value1) is : " + "\(sqrt(value1))")
        print("squareRoot of \(value2) is : " + "\(sqrt(value2))")
    }
}

equals(chooseOperator: .addition, value1: 10, value2: 5)
equals(chooseOperator: .substraction, value1: 20, value2: 2)
equals(chooseOperator: .multiply, value1: 2, value2: 30)
equals(chooseOperator: .squareRoot, value1: 22, value2: 25)








//Question 3: - Make the same calculator using functions as an argument, define all type functions in a struct.

struct Calculator {
    
    // function for addition--
    func addValues(a: Double, b: Double) {
        print("addition of \(a) and \(b) is : " + "\(a + b)")
    }
    
    // function for substraction--
    func substractValues(a: Double, b: Double) {
        print("substraction of \(a) and \(b) is : " + "\(a - b)")
    }
    
    // function for multiplication--
    func multiplyValues(a: Double, b: Double) {
        print("multiplication of \(a) and \(b) is : " + "\(a * b)")
    }
    
    // function for squareroot--
    func squareRootValues(a: Double) {
        print("squareRoot of \(a) is : " + "\(sqrt(a))")
    }
   
}


Calculator().addValues(a: 300, b: 2)
Calculator().substractValues(a: 200, b: 56)
Calculator().multiplyValues(a: 100, b: 59)
Calculator().squareRootValues(a: 100)


/*
 Question 4: Create a TraineesActivity Class which lazily initializes a data source of all the trainees in an array.

Define a closure to filter and find the trainee object based on the name passed.

Create an enum explained below which would also have a function returning a closure that takes the trainee object and return a string describing the skill for every enum case.

This TraineeActivity would provide three functions as below to perform, record, and rerun the activity. On calling perform passing the name of trainee make use of closure declared to find the trainee object, pass this object to activity closure defined in enum to execute the activity. Later record this activity in any data structure mapped to a trainee and use this data structure to rerun the activity performed.

on deinitialization, it should print - Hey !!! Thanks, I am gone.
*/

struct myDataSource {
    var name: String
    var dance: Int
    var academic: Int
    var run: Int
    var Sing: Int
    var fight: Int
}

enum Task{
    case dance
    case academic
    case run
    case sing
    case fight

    func task() -> String {
        switch  self {
        case .dance:
            return "good dance"
        case .academic:
            return "good academics"
        case .run:
            return "good run"
        case .sing:
            return "good sings"
        case .fight:
            return "good fights"
        
        }
    }

    func filter(_ name: String, object: (String) -> Void ){
        object(name)
    }

}

class  TraineesActivity{
    
    lazy var myData: [myDataSource] = [.init(name: "Gaurav", dance: 12, academic: 98, run: 73, Sing:   44, fight: 90),
        .init(name: "Chirag", dance: 23, academic: 67, run: 34, Sing: 46, fight: 56),
        .init(name: "Satyam", dance: 44, academic: 23, run: 55, Sing: 22, fight: 78) ]

    var records1: [myDataSource] = []
    var records2: [Task] = []
    func performActivity(_ name: String, _ activity: Task){
        var tranieeobj: myDataSource? = nil
        activity.filter(name) { (name) in
            for data in myData where data.name == name {
                tranieeobj = data
            }
        }
        if tranieeobj != nil {
            print("\(tranieeobj?.name ?? "not") good \(activity) \(tranieeobj!.run)")
            recordActivity(trainee: tranieeobj!, Activity: activity)
        }
        else{
            print("No trainee found")
        }
    }

    func recordActivity(trainee traineeObj: myDataSource, Activity activity: Task) {
        records1.append(traineeObj)
        records2.append(activity)
    }

    func rerunActivity() {
        for i in records1 {
            for j in records2 {
                print("\(i.name) good " + "\(j)" + " \(i.run)" )
            }
        }
    }
    deinit {
        print("Hey !!! Thanks, I am gone.")
    }
}
var obj1 = TraineesActivity()
obj1.performActivity("Gaurav", .run)
obj1.performActivity("Chirag", .run)
obj1.performActivity("Satyam", .academic)
obj1.rerunActivity()

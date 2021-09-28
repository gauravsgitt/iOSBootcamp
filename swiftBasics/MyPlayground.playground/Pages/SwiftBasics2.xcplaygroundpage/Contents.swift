import UIKit
import PlaygroundSupport

//Initializers
//1: Implement the parameterised initialisation with class or struct.

struct Convertlen {
    var length_in_m: Double
    init(lenincm cm: Double) {
        length_in_m = cm / 100
    }
    init(lenininches inches: Double) {
        length_in_m = inches * 0.0254
    }
}
let cmtom = Convertlen(lenincm: 212) //length_in_m: 2.12
let inchestom = Convertlen(lenininches: 273) //length_in_m: 6.9342

print(cmtom)
print(inchestom)


/*
 2: Write all the Rules of initialiser in Inheritance.

 Rule 1 : If your subclass doesn’t define any designated initializers, it automatically inherits all of its superclass designated initializers.
 
 Rule 2: If your subclass provides an implementation of all of its superclass designated initializers — either by inheriting them as per rule 1, or by providing a custom implementation as part of its definition — then it automatically inherits all of the superclass convenience initializers.
 */


//3: Using convenience Initializers, write-down the Initializers for MOVIE class having basic attributes like title, author, publish_date, etc.

class MOVIE {
    var title: String
    var author: String
    var publish_date: String
    
    init(title: String, author: String, publish_date: String) {
        self.title = title
        self.author = author
        self.publish_date = publish_date
    }
    convenience init() {
        self.init(title: "Avengers", author: "Marvel", publish_date: "20-05-2017")
    }
}

let movie = MOVIE()

print(movie.title)
print(movie.author)
print(movie.publish_date)


//4: Declare a structure which can demonstrate the throwable Initializer

enum ValidationError: Error {
    case invalid
}

struct User {
    let name: String
    
    init(name: String?) throws {
        
        guard let name = name else {
            throw ValidationError.invalid
        }
        
        self.name = name
        
    }
}

do {
    try User(name: "Satyam")
}
catch ValidationError.invalid {
    print("Invalid.")
}




//Array
//1: Create an array containing the 5 different integer values. Write are at least 4 ways to do this.

var arr1 = [10,20,30,40,50]
print(arr1)

var marksArr = [Int]()
marksArr = [99,98,97,96,95]
print(marksArr)

var numberOfStudentsArr: [Int] = [100,200,200,150]
print(numberOfStudentsArr)

var arrayNew: Array<Int> = [1,2,4,15]
print(arrayNew)


//2: Create an immutable array containing 5 city names.

let myArray = [1,2,3]
print(myArray)


//3: Create an array with city 5 city names. Later add other names like Canada, Switzerland, Spain to the end of the array in at least 2 possible ways.

var arrCities = ["Dehradun", "Ooty", "Shimla", "Manali", "Etawah"]
print(arrCities)
arrCities += ["Canada", "Switzerland", "Spain"]
print(arrCities)

arrCities.removeAll()
print(arrCities)


//4: Create an array with values 14, 18, 15, 16, 23, 52, 95. Replace the values 24 & 48 at 2nd & 4th index of array

var valueArray = [14,18,15,16,23,52,95]
print(valueArray)

valueArray[2] = 24
valueArray[4] = 48
print(valueArray)




//Set
let houseAnimals: Set = ["Dog", "Cat"]
let farmAnimals: Set = ["cow", "Hen", "Sheep", "Dog", "Cat"]
let cityAnimals: Set = ["Bird", "Rat"]

//1: Determine whether the set of house animals is a subset of farm animals.
print(houseAnimals.isSubset(of: farmAnimals))


//2: Determine whether the set of farm animals is a superset of house animals.
print(farmAnimals.isSuperset(of: houseAnimals))


//3: Determine if the set of farm animals is disjoint with city animals.
print(farmAnimals.isDisjoint(with: cityAnimals))


//4: Create a set that only contains farm animals that are not also house animals.
let nonhousefarm = farmAnimals.subtracting(houseAnimals)
print(nonhousefarm)


//5: Create a set that contains all the animals from all sets.
let houseFarm = houseAnimals.union(farmAnimals)
let allAnimals = houseAnimals.union(cityAnimals)
print(allAnimals)




//Dictionary
//1: Create an empty dictionary with keys of type String and values of type Int and assign it to a variable in as many ways as you can think of (there's at least 4 ways).

var numbersDict: [String: Int] = ["one": 1, "two": 2, "three": 3, "four": 4]
print(numbersDict)


var sportsRatingDict = [String: Int]()
sportsRatingDict["chessRating"] = 5
sportsRatingDict["cricketRating"] = 4
sportsRatingDict["footballRating"] = 5
print(sportsRatingDict)

var marksDict = Dictionary<String, Int>()
marksDict["math"] = 99
marksDict["physics"] = 100
marksDict["chemistry"] = 95
marksDict["geography"] = 98
print(marksDict)

var colorsChoiceDict: [String: Int] = [:]
colorsChoiceDict["red"] = 255
colorsChoiceDict["green"] = 245
colorsChoiceDict["black"] = 240
colorsChoiceDict["orange"] = 252
print(colorsChoiceDict)

var emptyDict5: [String: Int] = [String: Int]()
var emptyDict6: [String: Int] = Dictionary<String, Int>()
var emptyDict7: Dictionary = [String: Int]()
var emptyDict8: Dictionary = Dictionary<String, Int>()
var emptyDict9: Dictionary<String, Int> = [:]
var emptyDict10: Dictionary<String, Int> = [String: Int]()
var emptyDict11: Dictionary<String, Int> = Dictionary<String, Int>()




//2: Create a mutable dictionary named secretIdentities where the key value pairs are "Hulk" -> "Bruce Banner", "Batman" -> "Bruce Wayne", and "Superman" -> "Clark Kent".

var secretIdentities: [String: String] = ["Hulk": "Brouce Banner", "Batman": "Bruce Wayne", "Superman": "Clark Kent"]
print(secretIdentities)
print(secretIdentities["Hulk"] as Any)

secretIdentities["Hulk"] = "AbraKaDabra"

print(secretIdentities)
print(secretIdentities["Hulk"] as Any)


//3: Create a nesters structure of Key-value pair.
var colorsDict = [String : Int]()
var patternsDict =  [String : [String : Int]] ()
var bugsDict = [String : [String : [String : Int]]] ()

colorsDict["red"] = 1
patternsDict["spotted"] = colorsDict
bugsDict["ladybug"] = patternsDict

bugsDict["ladybug"]!["spotted"]!["red"]!

print(bugsDict["ladybug"]!["spotted"]!["red"]!)


//4: Print all the keys in the dic

print(bugsDict.keys)




//Subscript
/*
 1: What is subscript ? Write down the declaration syntax.

Subscripts enable you to query instances of a type by writing one or more values in square brackets after the instance name.

 Syntax:
 subscript(index: Int) -> Int {
 get {
 // Return value here.
 }
 set(newValue) {
 // setting action here.
 }
 }
 */


//2: Create a simple subscript that outputs true if a string contains a substring and false otherwise.

extension String {
    subscript(pattern: String) -> Bool {
        get {
            let range = self.range(of: pattern)
            return ((range?.isEmpty) != nil)
        }
    }
}

var aString = "We Love Swift"
print(aString["ove"])
print(aString["SAttu"])

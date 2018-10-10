import UIKit

// Variables and constants

var number = 10
let name = "Shashank"
let lastName: String = "Sharma"

// Strings

let sentence = "My name is \(name)"

// Arrays

var firstNames = ["Sal", "Shashank", "Vineeth"]
var lastNames: [String] = ["Fakhri", "Sharma", "Puli"]
firstNames.append("John")
lastNames.append("Smith")

// Booleans

var isOpen = true
var isValid: Bool = false

// Loops

for name in firstNames {
    print(name)
}

var count = 0
while (count < 10) {
    print(count)
    count = count + 1;
}

// Enums

enum Days {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum Direction {
    case up, down, left, right
}

// Switch statement

var day: Days = Days.Monday
var anotherDay: Days = .Friday

switch day {
case .Saturday, .Sunday:
    print("Weekend")
default:
    print("Weekday")
}

// Functions

func sayHello() {
    print("Hello")
}

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Sal")

func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

var addedNum = addNumbers(a: 5, b: 6)

// Classes and Structs

//classes are reference types
class DogClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//structs are value types
struct DogStruct {
    var name: String
}

// Optionals

var optionalNum: Int? = 10

if let num = optionalNum {
    // now you can use the number
    print(num)
}

func doSomething(number: Int?) {
    guard let num = number else { return }
    // now you can use the number
    print(num)
}

// Challenge questions

/*
    1) Write a funciton that takes in an array of integers and returns the sum of all the numbers
 */

var inputOne = [1, 2, 5, 6, 2, 8, 10]
// write your code here


/*
    2) Write a funciton that takes in a sentence as a string and returns an array of words
 */

var inputTwo = "Swift is a sexy language"
//write your code here










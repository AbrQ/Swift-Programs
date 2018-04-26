//Simple Values

//When we are using "let", we are saying that's a constant value
//When we are using "var", it means that maybe the value can change

import UIKit

let numeroFijo = 10
var miNumero = 5
miNumero = 7
var str = "Hello, playground"

//A constant or variable lets the compiler infer its type

let implicitInteger = 70
let implicitDouble = 70.0
let implicitFloat = 70.0

//But we can also make a explicit declaration

let explicitInteger: Int = 70
let explicitDouble: Double = 70.0
let explicitFloat: Float = 70.0

//If we need convert a value into a different kind of type, we need explicitly make an intance of the desired type.

let label = "This song is around: "
let year = 1984
let yearSong = label + String(year)

//An easy form that swift provide us for includying values into Strings is with \

let apples = 3
let phrase = "The number of apples there are: \(apples)"
let bananas = 9
let account = "We have \(apples + bananas) fruits here"

//Another interesting thing is this: """ the triple quotation marks in order to have a spececific indentation

let paragraph = """
                Tell me...
                How important is for you the future?
                        :(
                """

//Arrays and dictionaries: we can create them using [] brackets and access their elements by writing the index or key in brackets. A comma is allowed after the last element.

//Arrays
var shoppingList = ["catfish","water","blue paint"]
shoppingList[1] = "bottle of water"
//Dictionaries
var occupation = [
    "Abraham": "Programer",
    "Quezada": "Developer",
    ]
occupation["Tapia"] = "Tester"
//Empty array or dictionary
let emptyArray = [String]()
let emptyDictionary = [String: Float]()


//Control flow
//Use if and switch to make conditionals, and use for-in,while and repeat-while to make loops

let individualScores = [75, 27, 12, 87, 90]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    }
}



//? and nil are in cases when we are missing a value
var optionalString: String? = "Hello"

var optionalName: String? = "Abraham"
var greeting = "Hi!"
if let name = optionalName{
    greeting = "Hi, \(name)"
}

//operator ?? is the optional value. The default value is used instead.

let nickName: String? = nil
let fullName: String = "John Appleseed"

let informalGreeting = "hi \(nickName ?? fullName)"

//Switches support any kind of data and comparison operations. There aren't limited to integers and tests for equality. Here in swift isn't necessary a break function

let guitar = "Les Paul"

switch guitar{
    
case "drums":
    print("Puedes llevar el tiempo de la cancion")
    
case "bass","tololoche":
    print("Los graves de la cancion")
    
case let x where x.hasPrefix("Les"): //or maybe hasSuffix("Paul")
    print("Seguro harás buen ruido!")

default:
    print("Hay buen sonido")
}

let interestingNumbers = [
    "prime": [2, 3 , 5, 7, 11, 13],
    "fibonacci": [1, 1, 2, 3, 5, 8],
    "square": [1, 4, 9, 16, 25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

//print(largest)

//Use while to repeat a block of code until a condition changes. While alone run the code at least once.

var n = 2

while n < 100 {
    n *= 2
}

//print(n)

var m = 2

repeat {
    m *= 2
}

while m < 100

//print(m)


//Also, in a for sentence we can use a range o values. For example:

var total = 0

for i in 0..<4 {
    total += i
}

//print(total)

































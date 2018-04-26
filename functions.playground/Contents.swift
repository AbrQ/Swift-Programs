

import UIKit

//Use func to declare a function. Use -> to separate the parameter names and types from the function's return type.

/*func greet(person: String, day: String) ->
    String{
        return "Hello \(person), today is \(day)."
}

greet(person: "Bob", day: "Tuesday")*/


//By default, functions use their parameter names. Write a custom argument label before the parameter name, or write _ to use no argument label.

//func greet(_ person: String, on day: String) ->
//   String{
//       return "Hello \(person), today is: \(day)."
//}

//greet("John", on: "Wednesday")


func chicharron(a: Float, b: Float, c: Float) ->
    Float{
        
        return -b+sqrt((b*b)-(4*a*c))/2*a
}

chicharron(a: 2, b: 4, c: 2)






























//: Playground - noun: a place where people can play

import UIKit

struct Book{
    let name: String
    let publicationYear: Int?
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone",publicationYear: 1997)

let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets",publicationYear: 1998)

let newBookHarryPotter = Book(name: "Rebels and Lions", publicationYear: 2020)

let book = [firstHarryPotter, secondHarryPotter, newBookHarryPotter]

if newBookHarryPotter.publicationYear != nil{
    let actualYear = newBookHarryPotter.publicationYear!
    print(actualYear)
}
else{
    print("Próximamente")
}

var serverResponseCode: Int?
serverResponseCode = nil

//print("Año de publicacion: \(book[2].publicationYear)")

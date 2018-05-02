//: Playground - noun: a place where people can play

import UIKit

struct Book{
    let name: String
    let publicationYear: Int?
    init?(name: String, publicationYear: Int?){
        if(publicationYear == 1997){
            return nil
        }
        else{
            self.name = name
            self.publicationYear = publicationYear
        }
    }
}

let firstHarryPotter = Book(name: "Harry Potter and the Sorcerer's Stone",publicationYear: 1997)

let secondHarryPotter = Book(name: "Harry Potter and the Chamber of Secrets",publicationYear: 1998)

let newBookHarryPotter = Book(name: "Rebels and Lions", publicationYear: nil)

let book = [firstHarryPotter, secondHarryPotter, newBookHarryPotter]

print(firstHarryPotter)

/*if newBookHarryPotter.publicationYear != nil{
    let actualYear = newBookHarryPotter.publicationYear!
    print(actualYear)
}
else{
    print("Próximamente")
}

//optional binding
if let unwrappedPublicationYear = book[1].publicationYear {
    print(unwrappedPublicationYear)
}
else{
    print("Proximamente")
}
 

let cadena = "1computo2"
let possibleNumber = Int(cadena)
if possibleNumber != nil{
    print(possibleNumber)
}
else{
    print("No fue posible generar un numero")
}
*/


struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var address: Address?
}

struct Address{
    var number: String
    var street: String
    var apartmentNumber: String?
}

let persona: Person = Person(age: 12, residence: Residence(address: Address(number: "12", street: "Cien Fuegos", apartmentNumber: "2")))
//print(persona.residence!.address!.apartmentNumber!)
if let unwrappedResidencia = persona.residence {
    if let unwrappedAddres = unwrappedResidencia.address{
        if let unwrappedApartment = unwrappedAddres.apartmentNumber{
            print(unwrappedApartment)
        }
    }
}

if let unwrappedEasyApartment = persona.residence?.address?.apartmentNumber{
    print(unwrappedEasyApartment)
}
else{
    print("No tiene numero de depto")
}

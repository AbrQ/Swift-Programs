//: Playground - noun: a place where people can play

import UIKit

/*class Vehicle{
    var currentSpeed = 0.0
    func makeNoise(){
        print("RUN RUN!")
    }
}

class Bicycle: Vehicle{
    var hasBasket = false
}

class Tandem: Bicycle{
    var currentNumberOfPassengers = 0
}


class Train: Vehicle{
    override func makeNoise(){
        print("CHU CHU!")
    }
}

let someVehicle = Vehicle()
someVehicle.makeNoise()
let myBicycle = Bicycle()
myBicycle.makeNoise()
let myTandem = Tandem()
myTandem.currentNumberOfPassengers = 2
print(myTandem.currentNumberOfPassengers)
let myTrain = Train()
print(myTrain.makeNoise())*/

class Spaceship{
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft(){
        position -= 1
        print(position)
    }
    
    func moveRight(){
        position += 1
        print(position)
    }
    
    func wasHit(){
        health -= 5
        print(health)
    }
}

class Fighter: Spaceship{
    var weapon = ""
    var remainingFirePower = 5
    var fire = 2
    
    func shoot(){
        fire -= 1
        print(fire)
        if (fire == 0){
            print("You can't continue shooting!")
        }
    }
}

class ShieldShip: Fighter{
    var shieldStrength = 25
    func shieldHit(){
        shieldStrength -= 5
        if shieldStrength == 0 {
            wasHit()
        }
    }
}


let falcon = Spaceship()
let destroyer = Fighter()
let defender = ShieldShip()
falcon.name = "Falcon"
falcon.moveRight()
falcon.moveRight()
falcon.moveLeft()
falcon.wasHit()
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
destroyer.name = "Destroyer"
destroyer.shoot()
destroyer.shoot()
defender.shoot()




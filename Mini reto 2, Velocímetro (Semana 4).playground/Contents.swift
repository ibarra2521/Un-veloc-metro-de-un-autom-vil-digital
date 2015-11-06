//: Playground - noun: a place where people can play

import UIKit

enum Speeds: Int {
    case Off = 0, LowSpeed = 20, MediumSpeed = 50, HighSpeed = 120
    init(initialSpeed: Speeds) {
        self = initialSpeed
    }
}

class Auto {
    var speed: Speeds = Speeds.Off //Option 1
//    var speed = Speeds(initialSpeed: Speeds.Off) // Option 2
    
    init (speed: Speeds) {
        self.speed = Speeds(initialSpeed: Speeds.Off)
//        super.init(mark: mark, price: price)
    }
    
    
}

var auto = Auto(speed: .Off)
auto.speed

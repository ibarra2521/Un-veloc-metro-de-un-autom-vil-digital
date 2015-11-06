//: Playground - noun: a place where people can play

import UIKit

enum Speeds: Int {
    case Off = 0, LowSpeed = 20, MediumSpeed = 50, HighSpeed = 120
    init(initialSpeed: Speeds) {
        self = initialSpeed
    }
}

class Auto {
    var speed: Speeds
    init (speed: Speeds) {
        self.speed = Speeds(initialSpeed: Speeds.Off)
    }
    
    func speedChange() -> (Int, String) {
        if self.speed.rawValue == 0 {
            self.speed = .LowSpeed
        }else if self.speed.rawValue == 20 {
            self.speed = .MediumSpeed
        }else if self.speed.rawValue == 50 {
            self.speed = .HighSpeed
        }else if self.speed.rawValue == 120 {
            self.speed = .MediumSpeed
        }
        return (self.speed.rawValue, "\(auto.speed)")
    }
}

var auto = Auto(speed: .Off)
print("\(auto.speed.rawValue) km/h \t \(auto.speed)")
for i in 0..<20 {
    var tupleSpeed = auto.speedChange()
    print("\(tupleSpeed.0) km/h \t \(tupleSpeed.1)")
}

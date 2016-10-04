//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by Nick Rigano on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String { return "UFO Type X-Wing 1701D" }
    
    init(name: String, planet: Planet) {
        self.name = name
        self.currentPlanet = planet
    }
    
    func timeTravel() -> Bool { return speed.canTimeTravel }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool { return self.speed.rawValue > spaceShip.speed.rawValue }
    
    func travel(to planet: Planet) -> Bool {
        
        if currentPlanet == .mercury { return false }
        
        switch (planet, speed) {
        case (.venus, .fast), (.earth, .fast), (.mars, .lightSpeed), (.jupiter, .slow), (.saturn, .medium), (.uranus, .slow), (.neptune, .fast):
            currentPlanet = planet
            return true
        case (.neptune, .lightSpeed), (.venus, .lightSpeed):
            currentPlanet = .mars
            return false
        default:
            return false
        }
    
    }
    
}

//
//  Planet.swift
//  TimeTravel
//
//  Created by Nick Rigano on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var hasLife: Bool {
        switch self {
        case .earth, .mars: return true
        default: return false
        }
    }
    
    var weather: Weather {
        switch self {
        case .mercury: return .superDuperHot
        case .venus: return .hot
        case .earth: return .warm
        case .mars: return .warm
        default: return .cold
        }
    }
    
}

//
//  StarWarsStarship.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/23/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsStarship{
    
    var name: String?
    var model: String?
    var manufacturer: String?
    var costInCredits: String?
    var length: String?
    var maxAtmosphericSpeed: String?
    var crew: String?
    var cargoCapacity: String?
    var starshipClass: String?
    
    init(name: String, model: String, manufacturer: String, costInCredits: String, length: String, maxAtmosphericSpeed: String, crew: String, cargoCapacity: String, starshipClass: String) {
        self.name = name
        self.model = model
        self.manufacturer = manufacturer
        self.costInCredits = costInCredits
        self.length = length
        self.maxAtmosphericSpeed = maxAtmosphericSpeed
        self.crew = crew
        self.cargoCapacity = cargoCapacity
        self.starshipClass = starshipClass
    }
    
}

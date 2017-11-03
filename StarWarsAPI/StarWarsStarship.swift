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
    
    init(jsonDictionary: [String: Any]) {
        self.name = jsonDictionary["name"] as? String
        self.model = jsonDictionary["model"] as? String
        self.manufacturer = jsonDictionary["manufacturer"] as? String
        self.costInCredits = jsonDictionary["cost_in_credits"] as? String
        self.length = jsonDictionary["length"] as? String
        self.maxAtmosphericSpeed = jsonDictionary["max_atmosphering_speed"] as? String
        self.crew = jsonDictionary["crew"] as? String
        self.cargoCapacity = jsonDictionary["cargo_capacity"] as? String
        self.starshipClass = jsonDictionary["starship_class"] as? String
    }
    
}

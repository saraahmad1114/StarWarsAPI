//
//  StarWarsPlanet.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/23/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPlanet {
    
    var name: String?
    var rotationPeriod: String?
    var orbitalPeriod: String?
    var diameter: String?
    var gravity: String?
    var terrain: String?
    var population: String?
    
    init(jsonDictionary: [String: Any]) {
        self.name = jsonDictionary["name"] as? String
        self.rotationPeriod = jsonDictionary["rotation_period"] as? String
        self.orbitalPeriod = jsonDictionary["orbital_period"] as? String
        self.diameter = jsonDictionary["diameter"] as? String
        self.gravity = jsonDictionary["gravity"] as? String
        self.terrain = jsonDictionary["terrain"] as? String
        self.population = jsonDictionary["population"] as? String
    }
    
    
    
    
    
}

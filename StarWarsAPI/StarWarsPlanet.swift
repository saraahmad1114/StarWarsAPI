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
    
    init(name: String, rotationPeriod: String, orbitalPeriod: String, diameter: String, gravity: String, terrain: String, population: String) {
        
        self.name = name
        self.rotationPeriod = rotationPeriod
        self.orbitalPeriod = orbitalPeriod
        self.diameter = diameter
        self.gravity = gravity
        self.terrain = terrain
        self.population = population
        
    }
    
    
    
    
    
}

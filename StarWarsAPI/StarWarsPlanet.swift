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
       guard let name = jsonDictionary["name"] as? String else { print("did not unwrap"); return }
       guard let rotationPeriod = jsonDictionary["rotation_period"] as? String else { print("did not unwrap"); return }
       guard let orbitalPeriod = jsonDictionary["orbital_period"] as? String else { print("did not unwrap"); return }
       guard let diameter = jsonDictionary["diameter"] as? String else { print("did not unwrap"); return }
       guard let gravity = jsonDictionary["gravity"] as? String else { print("did not unwrap"); return }
       guard let terrain = jsonDictionary["terrain"] as? String else { print("did not unwrap"); return }
       guard let population = jsonDictionary["population"] as? String else { print("did not unwrap"); return }
        
        self.name = name
        self.rotationPeriod = rotationPeriod
        self.orbitalPeriod = orbitalPeriod
        self.diameter = diameter
        self.gravity = gravity
        self.terrain = terrain
        self.population = population
        
        
    }
 
}

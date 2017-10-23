//
//  StarWarsPeople.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/23/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPeople {
    
    var name: String
    var height: String
    var weight: String
    var hairColor: String
    var skinColor: String
    var eyeColor: String
    var birthYear: String
    
    init(name: String, height: String, weight: String, hairColor: String, skinColor: String, eyeColor: String, birthYear: String) {
        self.name = name
        self.height = height
        self.weight = weight
        self.hairColor = hairColor
        self.skinColor = skinColor
        self.eyeColor = eyeColor
        self.birthYear = birthYear
    }
    
}

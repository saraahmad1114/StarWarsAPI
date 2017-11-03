//
//  StarWarsPeople.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/23/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPeople {
    
    var name: String?
    var height: String?
    var weight: String?
    var hairColor: String?
    var skinColor: String?
    var eyeColor: String?
    var birthYear: String?
    var gender: String?
    
    init(jsonDictionary: [String: Any]) {
        self.name = jsonDictionary["name"] as? String
        self.height = jsonDictionary["height"] as? String
        self.weight = jsonDictionary["mass"] as? String
        self.hairColor = jsonDictionary["hair_color"] as? String
        self.skinColor = jsonDictionary["skin_color"] as? String
        self.eyeColor = jsonDictionary["eye_color"] as? String
        self.birthYear = jsonDictionary["birth_year"] as? String
        self.gender = jsonDictionary["gender"] as? String
    }
    
}

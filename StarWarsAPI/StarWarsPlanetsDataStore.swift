//
//  StarWarsPlanetsDataStore.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/21/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPlanetsDataStore{
    
    static let sharedInstance = StarWarsPlanetsDataStore()
    private init() {}
    
    var starWarsPlanetsArray = [StarWarsPlanet]()
    
    func getStarWarsPlanetsInformation (completion:@escaping ([StarWarsPlanet]) -> ()){
        
        StarWarsPlanetsAPIClient.getStarWarsPlanetsInformation { (starWarsPlanetsJsonArray) in
            
            for singleDictionary in starWarsPlanetsJsonArray{
                
                guard let unwrapppedSingleDictionary = singleDictionary as? [String: Any] else {print("singleDictionary did not unwrap"); return}
                
                guard let planetName = unwrapppedSingleDictionary["name"] as? String else {print("planetName did not unwrap"); return}
                
                guard let planetRotationPeriod = unwrapppedSingleDictionary["rotation_period"] as? String else {print("planetRotationPeriod did not unwrap"); return}
                
                guard let planetOrbitalPeriod = unwrapppedSingleDictionary["orbital_period"] as? String else {print("planetOrbitalPeriod did not unwrap"); return}
                
                guard let planetDiameter = unwrapppedSingleDictionary["diameter"] as? String else {print("planetDiameter did not unwrap"); return }
                
                guard let planetGravity = unwrapppedSingleDictionary["gravity"] as? String else {print("planetGravity did not unwrap"); return}
                
                guard let planetTerrain = unwrapppedSingleDictionary["terrain"] as? String else {print("planetTerrain did not unwrap"); return}
                
                guard let planetPopulation = unwrapppedSingleDictionary["population"] as? String else {print("planetPopulation did not unwrap"); return}
                
                let planetObject = StarWarsPlanet.init(name: planetName, rotationPeriod: planetRotationPeriod, orbitalPeriod: planetOrbitalPeriod, diameter: planetDiameter, gravity: planetGravity, terrain: planetTerrain, population: planetPopulation)
                
                self.starWarsPlanetsArray.append(planetObject)
                
                print("************************************")
                print(planetObject.name)
                print(planetObject.rotationPeriod)
                print(planetObject.orbitalPeriod)
                print(planetObject.diameter)
                print(planetObject.gravity)
                print(planetObject.terrain)
                print(planetObject.population)
                print("************************************")
                
                print(self.starWarsPlanetsArray.count)
                
                
                
            }
        }
        
        
    }
    
    
}

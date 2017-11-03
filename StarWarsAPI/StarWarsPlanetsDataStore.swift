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
                
                let planetObject = StarWarsPlanet.init(jsonDictionary: unwrapppedSingleDictionary)
                
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
            completion(self.starWarsPlanetsArray)
        }
        
        
    }
    
    
}

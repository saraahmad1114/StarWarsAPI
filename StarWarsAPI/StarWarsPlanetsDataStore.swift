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
    var page = 1 
    
    func getStarWarsPlanetsInformation (page: Int, completion:@escaping ([StarWarsPlanet]) -> ()){
        
        StarWarsPlanetsAPIClient.getStarWarsPlanetsInformation(page: page) { (starWarsPlanetsJsonArray) in
            
            for singleDictionary in starWarsPlanetsJsonArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else {print("singleDictionary did not unwrap"); return}
                
                let planetObject = StarWarsPlanet.init(jsonDictionary: unwrappedSingleDictionary)
                
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

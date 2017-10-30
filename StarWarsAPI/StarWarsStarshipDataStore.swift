//
//  StarWarsStarshipDataStore.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/21/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsStarshipDataStore{
    
    static let sharedInstance = StarWarsStarshipDataStore()
    private init() {}
    
    var starWarsStarshipArray = [StarWarsStarship]()
    
    func getStarWarsStarshipInformation (completion:@escaping ([StarWarsStarship]) -> ()){
        
        StarWarsStarshipsAPIClient.getStarWarsStarshipsInformation { (starWarsStarshipsJsonArray) in
            for singleDictionary in starWarsStarshipsJsonArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else{print("singleDictionary did not unwrap"); return
                }
                
                guard let starShipName = unwrappedSingleDictionary["name"] as? String else {print("starShipName did not unwrap"); return}
                
                guard let starShipModel = unwrappedSingleDictionary["model"] as? String? else {print("starShipModel did not unwrap"); return}
                
                guard let starShipManufacturer = unwrappedSingleDictionary["manufacturer"] as? String else{print("starShipManufacturer did not unwrap"); return}
                
                guard let starShipCost = unwrappedSingleDictionary["cost_in_credits"] as? String else{print("starShipCost did not unwrap"); return}
                
                guard let starShipLength = unwrappedSingleDictionary["length"] as? String else {print("starShipLength did not unwrap"); return}
                
                guard let starShipAtmosphericSpeed = unwrappedSingleDictionary["max_atmosphering_speed"] as? String else {print("starShipAtmosphericSpeed did not unwrap"); return}
                
                guard let starShipCrew = unwrappedSingleDictionary["crew"] as? String else {print("starShipCrew did not unwrap"); return}
                
                guard let starShipCargoCapacity = unwrappedSingleDictionary["cargo_capacity"] as? String else {print("starShipCargoCapacity did not unwrap"); return}
                
                guard let starShipClass = unwrappedSingleDictionary["starship_class"] as? String else {print("starShipClass did not unwrap"); return}
                
                let starShipObject = StarWarsStarship.init(name: starShipName, model: starShipModel!, manufacturer: starShipManufacturer, costInCredits: starShipCost, length: starShipLength, maxAtmosphericSpeed: starShipAtmosphericSpeed, crew: starShipCrew, cargoCapacity: starShipCargoCapacity, starshipClass: starShipClass)
                
                self.starWarsStarshipArray.append(starShipObject)
            
                print("*******************************************************")
                print(starShipObject.name)
                print(starShipObject.model)
                print(starShipObject.manufacturer)
                print(starShipObject.costInCredits)
                print(starShipObject.length)
                print(starShipObject.maxAtmosphericSpeed)
                print(starShipObject.crew)
                print(starShipObject.cargoCapacity)
                print(starShipObject.starshipClass)
                print("*******************************************************")
                
                print(self.starWarsStarshipArray.count)
            }
            completion(self.starWarsStarshipArray)
        }
        
    }
     
}

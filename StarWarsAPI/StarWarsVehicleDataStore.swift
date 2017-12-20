//
//  StarWarsVehicleDataStore.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/12/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsVehicleDataStore{
    
    static let sharedInstance = StarWarsVehicleDataStore()
    private init() {}
    var starWarsVehicleArray = [StarWarsVehicles]()
    var page = 1
    
    func getStarWarsVehicles(page: Int, completion:@escaping ([StarWarsVehicles]) -> ()){
        
        StarWarsVehicleAPIClient.getStarWarsVehicleInformation(page: page) { (jsonArray) in
            
            for singleDictionary in jsonArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else{print("singleDictionary did not unwrap"); return}
                
                var starWarsVehicleObject = StarWarsVehicles.init(jsonDictionary: unwrappedSingleDictionary)
                
                self.starWarsVehicleArray.append(starWarsVehicleObject)
                                
            }
            completion(self.starWarsVehicleArray)
        }
        
        
    }
    
    func retrieveNextPageInformation()
    {
        self.page += 1
    }
    
}

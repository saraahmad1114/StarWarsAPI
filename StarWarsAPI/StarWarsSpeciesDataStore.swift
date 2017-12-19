//
//  StarWarsSpeciesDataStore.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsSpeciesDataStore{
    
    static let sharedInstance = StarWarsSpeciesDataStore()
    private init() {}
    
    var starWarsSpeciesArray = [StarWarsSpecies]()
    var page = 1
    
    
    func getStarWarsSpeciesInformation (page: Int, completion:@escaping ([StarWarsSpecies]) -> ()){
        
        StarWarsSpeciesAPIClient.getStarWarsSpeciesInformation(page: page) { (speciesArray) in
            for singleDictionary in speciesArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else{print("singleDictionary did not unwrap"); return}
                
                var speciesObject = StarWarsSpecies.init(jsonDictionary: unwrappedSingleDictionary)
                
                self.starWarsSpeciesArray.append(speciesObject)
                
            }
            
            completion(self.starWarsSpeciesArray)
        }
    }
    
    func retrieveNextPageInformation()
    {
        self.page += 1
    }
 
}

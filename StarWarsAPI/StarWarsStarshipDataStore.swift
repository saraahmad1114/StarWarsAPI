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
                
                //need to add 
                
                
                
                
            }
        }
        
        
    }
    
    
    
    
}

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
    var page = 1 
    
    func getStarWarsStarshipInformation (page: Int, completion:@escaping ([StarWarsStarship]) -> ()){
        StarWarsStarshipsAPIClient.getStarWarsStarshipsInformation(page: page) { (starWarsStarshipsJsonArray) in
            for singleDictionary in starWarsStarshipsJsonArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else{print("singleDictionary did not unwrap"); return
                }
                let starShipObject = StarWarsStarship.init(jsonDictionary: unwrappedSingleDictionary)
                self.starWarsStarshipArray.append(starShipObject)
            }
            completion(self.starWarsStarshipArray)
        }
    }
    
    func retrieveNextPageInformation()
    {
        self.page += 1
    }
}

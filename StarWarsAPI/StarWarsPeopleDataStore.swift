//
//  StarWarsPeopleDataStore.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/21/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPeopleDataStore{
    
    static let sharedInstance = StarWarsPeopleDataStore()
    private init() {}
    
    var starWarsPeopleArray = [StarWarsPeople]()
    var page = 1 
    
    func getStarWarsPeopleInformation (page: Int, completion:@escaping ([StarWarsPeople]) -> ()){
        
        StarWarsPeopleAPIClient.getStarWarsPeopleInformation(page: page) { (starWarsArray) in
            
            for singleDictionary in starWarsArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else {print("singleDictionary did not unwrap"); return}
                
                let singleStarWarsObject = StarWarsPeople.init(jsonDictionary: unwrappedSingleDictionary)

                self.starWarsPeopleArray.append(singleStarWarsObject)
            }
            completion(self.starWarsPeopleArray)
        }
        
    }
    
    func retrieveNextPageInformation()
    {
        self.page += 1
    }

}

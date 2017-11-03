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
    
    func getStarWarsPeopleInformation (completion:@escaping ([StarWarsPeople]) -> ()){
        
        StarWarsPeopleAPIClient.getStarWarsPeopleInformation { (starWarsArray) in
            
            for singleDictionary in starWarsArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else {print("singleDictionary did not unwrap"); return}
                
                let singleStarWarsObjectArray = StarWarsPeople.init(jsonDictionary: unwrappedSingleDictionary)

                self.starWarsPeopleArray.append(singleStarWarsObjectArray)
                
                print("*******************************************************")
                print(singleStarWarsObjectArray.name)
                print(singleStarWarsObjectArray.height)
                print(singleStarWarsObjectArray.weight)
                print(singleStarWarsObjectArray.hairColor)
                print(singleStarWarsObjectArray.skinColor)
                print(singleStarWarsObjectArray.eyeColor)
                print(singleStarWarsObjectArray.birthYear)
                print(singleStarWarsObjectArray.gender)
                print("*******************************************************")
                
                print(self.starWarsPeopleArray.count)
                
            }
            completion(self.starWarsPeopleArray)
        }
        
    }
    
    
    
}

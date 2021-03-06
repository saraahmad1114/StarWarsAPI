//
//  StarWarsPlanetsDataStore.swift
//  StarWarsAPI
//
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
                
            }
            completion(self.starWarsPlanetsArray)
        }
    }
    
    func retrieveNextPageInformation()
    {
        self.page += 1
    }
    
    
}

//
//  StarWarsFilmsDataStore.swift
//  StarWarsAPI
//
//

import Foundation

class StarWarsFilmsDataStore {
    
    static let sharedInstance = StarWarsFilmsDataStore()
    private init() {}
    
    var starWarsFilmsArray = [StarWarsFilms]()
    
    func getStarWarsFilms ( completion:@escaping ([StarWarsFilms]) -> ()){
        
        StarWarsFilmsAPIClient.getStarWarsFilmsInformation { (fiilmsArray) in
            
            for singleDictionary in fiilmsArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String: Any] else{print("singleDictionary did not unwrap"); return}
                
                var starWarsFilmObject = StarWarsFilms.init(jsonDictionary: unwrappedSingleDictionary)
                
                self.starWarsFilmsArray.append(starWarsFilmObject)
            }
            completion(self.starWarsFilmsArray)
        }
        
    }
  
}

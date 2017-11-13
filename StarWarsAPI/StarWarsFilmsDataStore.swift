//
//  StarWarsFilmsDataStore.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
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
                
                print("**************************************")
                print(starWarsFilmObject.title)
                print(starWarsFilmObject.episodeId)
                print(starWarsFilmObject.opening)
                print(starWarsFilmObject.director)
                print(starWarsFilmObject.producer)
                print(starWarsFilmObject.releaseDate)
                print("**************************************")
                
                self.starWarsFilmsArray.append(starWarsFilmObject)
                
                print(self.starWarsFilmsArray.count)
            }
            completion(self.starWarsFilmsArray)
        }
        
    }
    
   
  
}

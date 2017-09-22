//
//  StarWarsStarshipsAPIClient.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 9/22/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsStarshipsAPIClient{
    
    class func getStarWarsStarshipsInformation (completion: @escaping(Array<Any>)-> ()){
    
        var jsonStarWarsStarshipsArray = Array<Any>()
        
        var starWarsStarshipURL = "https://swapi.co/api/starships"
        
        let convertedURL = URL(string: starWarsStarshipURL)
        
        guard let unwrappedConvertedURL = convertedURL else {print("unwrappedConvertedURL did not unwrap"); return}
        
        let request = URLRequest(url: unwrappedConvertedURL)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let unwrappedData = data else{print("unwrappedData did not unwrap"); return}
            
            let jsonDictionary = try? JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
            
            guard let unwrappedJsonDictionary = jsonDictionary else {print("unwrappedJsonDictionary did not unwrap"); return}
            
            let resultsArray = unwrappedJsonDictionary["results"] as? Array<Any>
            
            guard let unwrappedResultsArray = resultsArray else {print("unwrappedResultsArray did not unwrap"); return}
            
            jsonStarWarsStarshipsArray = unwrappedResultsArray
            
            completion(jsonStarWarsStarshipsArray)
        }
        task.resume()
    
    }


}

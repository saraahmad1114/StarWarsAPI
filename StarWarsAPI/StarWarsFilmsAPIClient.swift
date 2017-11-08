//
//  StarWarsFilmsAPIClient.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/8/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsFilmsAPIClient{
    
    class func getStarWarsFilmsInformation (completion:@escaping([String: Any]) -> ()){
        
        var filmsJSon = [String: Any]()
        
        let filmsUrl = "https://swapi.co/api/films"
        
        let convertedUrl = URL(string: filmsUrl)
        
        guard let unwrappedConvertedUrl = convertedUrl else {print("convertedUrl did not unwrap"); return}
        
        let request = URLRequest(url: unwrappedConvertedUrl)
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let unwrappedData = data else {print("data did not unwrap"); return}
            
            let jsonDictionary = try? JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: Any]
            
            guard let uwnrappedJsonDictionary = jsonDictionary else {print("jsonDictionary did not unwrap"); return}
            
            filmsJSon =  uwnrappedJsonDictionary
            
            completion(filmsJSon)
        }
        task.resume()
    }

    
}

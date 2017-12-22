//
//  StarWarsFilms.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/10/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsFilms {
    
    var title: String?
    var episodeId: Int?
    var opening: String?
    var director: String?
    var producer: String?
    var releaseDate: String?
    
    init(jsonDictionary: [String: Any]) {
        guard
            let title = jsonDictionary["title"] as? String,
            let episodeId = jsonDictionary["episode_id"] as? Int,
            let opening = jsonDictionary["opening_crawl"] as? String,
            let director = jsonDictionary["director"] as? String,
            let producer = jsonDictionary["producer"] as? String,
            let releaseDate = jsonDictionary["release_date"] as? String
            else{print("did not unwrap"); return}
        
        self.title = title
        self.episodeId = episodeId
        self.opening = opening
        self.director = director
        self.producer = producer
        self.releaseDate = releaseDate
    }
}

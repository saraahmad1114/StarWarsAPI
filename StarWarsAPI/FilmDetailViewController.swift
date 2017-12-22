//
//  FilmDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/20/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class FilmDetailViewController: UIViewController {

    var filmObj: StarWarsFilms? 
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var openingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let filmObject = self.filmObj else {print("did not unwrap"); return}
        
        guard
            let title = filmObject.title,
            let director = filmObject.director,
            let episodeId = filmObject.episodeId,
            let producer = filmObject.producer,
            let opening = filmObject.opening,
            let releaseDate = filmObject.releaseDate
            else {print("did not unwrap"); return}
        
        self.view.backgroundColor = UIColor.black
        self.titleLabel.textColor = UIColor.white
        self.episodeLabel.textColor = UIColor.white
        self.directorLabel.textColor = UIColor.white
        self.producerLabel.textColor = UIColor.white
        self.releaseDateLabel.textColor = UIColor.white
        self.openingLabel.textColor = UIColor.white
        
        self.titleLabel.text = title
        self.directorLabel.text = director
        self.episodeLabel.text = String(episodeId)
        self.producerLabel.text = producer
        self.releaseDateLabel.text = releaseDate
        self.openingLabel.text = opening
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    



}

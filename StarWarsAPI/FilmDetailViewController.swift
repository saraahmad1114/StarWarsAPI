//
//  FilmDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/20/17.
//

import UIKit

class FilmDetailViewController: UIViewController {

    var filmObj: StarWarsFilms? 
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateLab: UILabel!
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var episodeNumberLabel: UILabel!
    @IBOutlet weak var releaseLabel: UILabel!
    @IBOutlet weak var movieDirectorLabel: UILabel!
    @IBOutlet weak var movieProducerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let filmObject = self.filmObj else {print("did not unwrap"); return}
        
        guard
            let title = filmObject.title,
            let director = filmObject.director,
            let episodeId = filmObject.episodeId,
            let producer = filmObject.producer,
            //let opening = filmObject.opening,
            let releaseDate = filmObject.releaseDate
            else {print("did not unwrap"); return}
        
        self.view.backgroundColor = UIColor.black
        self.titleLabel.textColor = UIColor.white
        self.episodeLabel.textColor = UIColor.white
        self.directorLabel.textColor = UIColor.white
        self.producerLabel.textColor = UIColor.white
        self.releaseDateLab.textColor = UIColor.white
        
        self.movieTitleLabel.textColor = UIColor.white
        self.episodeNumberLabel.textColor = UIColor.white
        self.releaseLabel.textColor = UIColor.white
        self.movieDirectorLabel.textColor = UIColor.white
        self.movieProducerLabel.textColor = UIColor.white
        
        self.titleLabel.text = title
        self.directorLabel.text = director
        self.episodeLabel.text = String(episodeId)
        self.producerLabel.text = producer
        self.releaseDateLab.text = releaseDate
        //self.openingLabel.text = opening
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

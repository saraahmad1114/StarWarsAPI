//
//  ViewController.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 9/20/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleButton: UIButton!
    
    @IBOutlet weak var planetsButton: UIButton!
    
    @IBOutlet weak var starshipsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.black

//        self.peopleButton.layer.shadowColor = UIColor.black.cgColor
//        self.peopleButton.layer.shadowOffset = CGSize(width: 1000, height: 1000)
//        self.peopleButton.layer.masksToBounds = false
//        self.peopleButton.layer.shadowRadius = 5
//
//        self.peopleButton.layer.shadowOpacity = 0.5
//        self.peopleButton.layer.cornerRadius = self.peopleButton.frame.width / 2
//        self.peopleButton.backgroundColor = .white
//
//
//
//        //starshipsButton
////        self.starshipsButton.backgroundColor = .yellow
////        self.starshipsButton.layer.cornerRadius = 8
////        self.starshipsButton.layer.borderWidth = 1
////        self.starshipsButton.layer.borderColor = UIColor.white.cgColor
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  


}


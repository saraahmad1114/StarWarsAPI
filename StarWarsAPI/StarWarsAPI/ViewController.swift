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
        
        //peopleButton
//        self.peopleButton.backgroundColor = .yellow
//        self.peopleButton.layer.cornerRadius = 8
//        self.peopleButton.layer.borderWidth = 1
//        self.peopleButton.layer.borderColor = UIColor.white.cgColor
        
        self.peopleButton.frame = CGRect(0, 0, 100, 100)
        self.peopleButton.layer.borderColor = UIColor.white.cgColor
        self.peopleButton.layer.borderWidth = 2
        self.peopleButton.layer.cornerRadius = 50
        self.peopleButton.setTitle("Star Wars People", for: [])
        self.peopleButton.backgroundColor = UIColor.blue
        self.peopleButton.setTitleColor(UIColor(red: 233/255, green: 64/255, blue: 87/255, alpha: 1), for: [])

        
        
        
        //planetsButton
//        self.planetsButton.backgroundColor = .yellow
//        self.planetsButton.layer.cornerRadius = 8
//        self.planetsButton.layer.borderWidth = 1
//        self.planetsButton.layer.borderColor = UIColor.white.cgColor

        //starshipsButton
//        self.starshipsButton.backgroundColor = .yellow
//        self.starshipsButton.layer.cornerRadius = 8
//        self.starshipsButton.layer.borderWidth = 1
//        self.starshipsButton.layer.borderColor = UIColor.white.cgColor
        
        
        //Vehicle Button
        
        //Species Button
        //Films Button
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  


}


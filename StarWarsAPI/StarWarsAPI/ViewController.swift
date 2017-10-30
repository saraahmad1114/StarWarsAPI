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
    
    let store = StarWarsPlanetsDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor = UIColor.black
        
        //peopleButton
        self.peopleButton.backgroundColor = .yellow
        self.peopleButton.layer.cornerRadius = 8
        self.peopleButton.layer.borderWidth = 1
        self.peopleButton.layer.borderColor = UIColor.white.cgColor
        
        //planetsButton
        self.planetsButton.backgroundColor = .yellow
        self.planetsButton.layer.cornerRadius = 8
        self.planetsButton.layer.borderWidth = 1
        self.planetsButton.layer.borderColor = UIColor.white.cgColor

        //starshipsButton
        self.starshipsButton.backgroundColor = .yellow
        self.starshipsButton.layer.cornerRadius = 8
        self.starshipsButton.layer.borderWidth = 1
        self.starshipsButton.layer.borderColor = UIColor.white.cgColor
        
        self.store.getStarWarsPlanetsInformation { (planetsArray) in
            print("*****************")
            print(planetsArray)
            print("*****************")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


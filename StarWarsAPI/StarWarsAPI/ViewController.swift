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
        // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor = UIColor.black
        
        self.peopleButton.backgroundColor = .clear
        self.peopleButton.layer.cornerRadius = 5
        self.peopleButton.layer.borderWidth = 1
        self.peopleButton.layer.borderColor = UIColor.yellow.cgColor
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


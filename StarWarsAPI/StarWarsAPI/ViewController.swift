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
        UINavigationBar.appearance().barTintColor = UIColor.red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  


}


//
//  PlanetDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/16/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    var starWarsPlanetObject: StarWarsPlanet?
    
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var rotationPeriod: UILabel!
    @IBOutlet weak var orbitalPeriod: UILabel!
    @IBOutlet weak var diameter: UILabel!
    @IBOutlet weak var gravity: UILabel!
    @IBOutlet weak var terrain: UILabel!
    @IBOutlet weak var population: UILabel!
    
    
    @IBOutlet weak var updateNameLabel: UILabel!
    @IBOutlet weak var updateRotationLabel: UILabel!
    @IBOutlet weak var updateOrbitalLabel: UILabel!
    @IBOutlet weak var updateDiameterLabel: UILabel!
    @IBOutlet weak var updateGravityLabel: UILabel!
    @IBOutlet weak var updateTerrainLabel: UILabel!
    @IBOutlet weak var updatePopulationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.planetName.textColor = UIColor.white
        self.rotationPeriod.textColor = UIColor.white
        self.orbitalPeriod.textColor = UIColor.white
        self.diameter.textColor = UIColor.white
        self.gravity.textColor = UIColor.white
        self.terrain.textColor = UIColor.white
        self.population.textColor = UIColor.white
        
        self.updateNameLabel.textColor = UIColor.white
        self.updateRotationLabel.textColor = UIColor.white
        self.updateOrbitalLabel.textColor = UIColor.white
        self.updateDiameterLabel.textColor = UIColor.white
        self.updateGravityLabel.textColor = UIColor.white
        self.updateTerrainLabel.textColor = UIColor.white
        self.updatePopulationLabel.textColor = UIColor.white

        guard let unwrappedStarWarsPlanetObject = self.starWarsPlanetObject else{print("did not unwrap"); return}
        
        guard
            let name = unwrappedStarWarsPlanetObject.name,
            let rotationPeriod = unwrappedStarWarsPlanetObject.rotationPeriod,
            let orbitalPeriod = unwrappedStarWarsPlanetObject.orbitalPeriod,
            let diameter = unwrappedStarWarsPlanetObject.diameter,
            let gravity = unwrappedStarWarsPlanetObject.gravity,
            let terrain = unwrappedStarWarsPlanetObject.terrain,
            let population = unwrappedStarWarsPlanetObject.population
            else { print("did not unwrap"); return}
        
        self.updateNameLabel.text = name
        self.updateRotationLabel.text = rotationPeriod
        self.updateOrbitalLabel.text = orbitalPeriod
        self.updateDiameterLabel.text = diameter
        self.updateGravityLabel.text = gravity
        self.updateTerrainLabel.text = terrain
        self.updatePopulationLabel.text = population
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

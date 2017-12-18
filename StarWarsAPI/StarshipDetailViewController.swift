//
//  StarshipDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/17/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class StarshipDetailViewController: UIViewController {
    
    var starShipObject: StarWarsStarship? 

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var costInCreditsLabel: UILabel!
    @IBOutlet weak var lengthLabel: UILabel!
    @IBOutlet weak var maxAtmosphericSpeedLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var cargoCapacitylabel: UILabel!
    @IBOutlet weak var starshipClassLabel: UILabel!
    
    
    @IBOutlet weak var updateName: UILabel!
    @IBOutlet weak var updateModel: UILabel!
    @IBOutlet weak var updateManufacturer: UILabel!
    @IBOutlet weak var updateCostInCreditsLabel: UILabel!
    @IBOutlet weak var updateLengthLabel: UILabel!
    @IBOutlet weak var updateMaxSpeed: UILabel!
    @IBOutlet weak var updateCrewLabel: UILabel!
    @IBOutlet weak var updateCargoCapacity: UILabel!
    @IBOutlet weak var updateStarshipClassLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.nameLabel.textColor = UIColor.white
        self.modelLabel.textColor = UIColor.white
        self.manufacturerLabel.textColor = UIColor.white
        self.costInCreditsLabel.textColor = UIColor.white
        self.lengthLabel.textColor = UIColor.white
        self.maxAtmosphericSpeedLabel.textColor = UIColor.white
        self.crewLabel.textColor = UIColor.white
        self.cargoCapacitylabel.textColor = UIColor.white
        self.starshipClassLabel.textColor = UIColor.white
        
        self.updateName.textColor = UIColor.white
        self.updateModel.textColor = UIColor.white
        self.updateManufacturer.textColor = UIColor.white
        self.updateCostInCreditsLabel.textColor = UIColor.white
        self.updateLengthLabel.textColor = UIColor.white
        self.updateMaxSpeed.textColor = UIColor.white
        self.updateCrewLabel.textColor = UIColor.white
        self.updateCargoCapacity.textColor = UIColor.white
        self.updateStarshipClassLabel.textColor = UIColor.white
        
        guard let starObject = starShipObject else{print("did not unwrap"); return}
        
        guard let name = starObject.name,
             let model = starObject.model,
             let manufacturer = starObject.manufacturer,
             let costInCredits = starObject.costInCredits,
             let length = starObject.length,
             let maxAtmosphericSpeed = starObject.maxAtmosphericSpeed,
             let crew = starObject.crew,
             let cargoCapacity = starObject.cargoCapacity,
             let starshipClass = starObject.starshipClass
            else {print("did not unwrap"); return}
        
        self.updateName.text = name
        self.updateModel.text = model
        self.updateManufacturer.text = manufacturer
        self.updateCostInCreditsLabel.text = costInCredits
        self.updateLengthLabel.text = length
        self.updateMaxSpeed.text = maxAtmosphericSpeed
        self.updateCrewLabel.text = crew
        self.updateCargoCapacity.text = cargoCapacity
        self.updateStarshipClassLabel.text = starshipClass

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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

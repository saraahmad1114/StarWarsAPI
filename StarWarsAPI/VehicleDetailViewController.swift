//
//  VehicleDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/20/17.
//

import UIKit

class VehicleDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var costInCreditsLabel: UILabel!
    @IBOutlet weak var maxAtmosphericSpeedLabel: UILabel!
    @IBOutlet weak var crewCapacityLabel: UILabel!
    @IBOutlet weak var vehicleClassLabel: UILabel!
    
    @IBOutlet weak var updateName: UILabel!
    @IBOutlet weak var updateModel: UILabel!
    @IBOutlet weak var updateManufacturer: UILabel!
    @IBOutlet weak var updateCost: UILabel!
    @IBOutlet weak var updateSpeed: UILabel!
    @IBOutlet weak var updateCrew: UILabel!
    @IBOutlet weak var updateClass: UILabel!
    
    var vehicleObj: StarWarsVehicles?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black
        self.nameLabel.textColor = UIColor.white
        self.modelLabel.textColor = UIColor.white
        self.manufacturerLabel.textColor = UIColor.white
        self.costInCreditsLabel.textColor = UIColor.white
        self.maxAtmosphericSpeedLabel.textColor = UIColor.white
        self.crewCapacityLabel.textColor = UIColor.white
        self.vehicleClassLabel.textColor = UIColor.white
        
        self.updateName.textColor = UIColor.white
        self.updateModel.textColor = UIColor.white
        self.updateManufacturer.textColor = UIColor.white
        
        self.updateManufacturer.numberOfLines = 0
        self.updateCost.textColor = UIColor.white
        self.updateSpeed.textColor = UIColor.white
        self.updateCrew.textColor = UIColor.white
        self.updateClass.textColor = UIColor.white
        
        guard let vehicleObject = self.vehicleObj else {print("did not unwrap"); return}
        
        guard
            let name = vehicleObject.name,
            let model = vehicleObject.model,
            let manufacturer = vehicleObject.manufacturer,
            let cost = vehicleObject.costInCredits,
            let speed = vehicleObject.maxAtmosphericSpeed,
            let crew = vehicleObject.crewCapacity,
            let vehichleClass = vehicleObject.vehicleClass
            
            else {print("did not unwrap"); return}
        
        self.updateName.text = name
        self.updateModel.text = model
        self.updateManufacturer.text = manufacturer
        self.updateCost.text = cost
        self.updateSpeed.text = speed
        self.updateCrew.text = crew
        self.updateClass.text = vehichleClass
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

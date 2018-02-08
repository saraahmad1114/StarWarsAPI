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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

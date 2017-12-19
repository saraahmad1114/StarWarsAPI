//
//  SpecieDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/19/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class SpecieDetailViewController: UIViewController {
    
    @IBOutlet weak var classificationUpdate: UILabel!
    @IBOutlet weak var nameUpdate: UILabel!
    @IBOutlet weak var designationUpdate: UILabel!
    @IBOutlet weak var heightUpdate: UILabel!
    @IBOutlet weak var skinUpdate: UILabel!
    @IBOutlet weak var hairUpdate: UILabel!
    @IBOutlet weak var eyeUpdate: UILabel!
    @IBOutlet weak var lifespanUpdate: UILabel!
    @IBOutlet weak var languageUpdate: UILabel!
    
    var specieObject: StarWarsSpecies?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let specieObj = self.specieObject else {print("did not unwrap"); return}
        
        guard
            let classification = specieObj.classification,
            let name = specieObj.name,
            let designation = specieObj.designation,
            let averageHeight = specieObj.averageHeight,
            let skinColor = specieObj.skinColor,
            let hairColor = specieObj.hairColor,
            let eyeColor = specieObj.eyeColor,
            let lifespan = specieObj.lifespan,
            let language = specieObj.language
            else {print("did not unwrap"); return}
        
        self.classificationUpdate.text = classification
        self.nameUpdate.text = name
        self.designationUpdate.text = designation
        self.heightUpdate.text = averageHeight
        self.skinUpdate.text = skinColor
        self.hairUpdate.text = hairColor
        self.eyeUpdate.text = eyeColor
        self.lifespanUpdate.text = lifespan
        self.lifespanUpdate.text = language

        
        
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

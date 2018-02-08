//
//  SpecieDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/19/17.
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
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var averageHeightLabel: UILabel!
    @IBOutlet weak var skinColorLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var lifespanLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    
    var specieObject: StarWarsSpecies?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.classificationUpdate.textColor = UIColor.white
        self.nameUpdate.textColor = UIColor.white
        self.designationUpdate.textColor = UIColor.white
        self.heightUpdate.textColor = UIColor.white
        self.skinUpdate.textColor = UIColor.white
        self.hairUpdate.textColor = UIColor.white
        self.eyeUpdate.textColor = UIColor.white
        self.lifespanUpdate.textColor = UIColor.white
        self.languageUpdate.textColor = UIColor.white
        
        self.nameLabel.textColor = UIColor.white
        self.classificationLabel.textColor = UIColor.white
        self.designationLabel.textColor = UIColor.white
        self.averageHeightLabel.textColor = UIColor.white
        self.skinColorLabel.textColor = UIColor.white
        self.hairColorLabel.textColor = UIColor.white
        self.eyeColorLabel.textColor = UIColor.white
        self.lifespanLabel.textColor = UIColor.white
        self.languageLabel.textColor = UIColor.white
        
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

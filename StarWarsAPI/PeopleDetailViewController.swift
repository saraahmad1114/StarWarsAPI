//
//  PeopleDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class PeopleDetailViewController: UIViewController {
    
    var starWarsPeopleObject: StarWarsPeople?

    @IBOutlet weak var updateNameLabel: UILabel!
    @IBOutlet weak var updateHeightLabel: UILabel!
    @IBOutlet weak var updateWeightLabel: UILabel!
    @IBOutlet weak var updateHairColorLabel: UILabel!
    @IBOutlet weak var updateSkinColorLabel: UILabel!
    @IBOutlet weak var updateEyeColorUpdate: UILabel!
    @IBOutlet weak var updateBirthYearLabel: UILabel!
    @IBOutlet weak var updateGenderLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var skinColorLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    let store = StarWarsPeopleDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.updateNameLabel.textColor = UIColor.white
        self.updateHeightLabel.textColor = UIColor.white
        self.updateWeightLabel.textColor = UIColor.white
        self.updateHairColorLabel.textColor = UIColor.white
        self.updateSkinColorLabel.textColor = UIColor.white
        self.updateEyeColorUpdate.textColor = UIColor.white
        self.updateBirthYearLabel.textColor = UIColor.white
        self.updateGenderLabel.textColor = UIColor.white
        
        self.heightLabel.textColor = UIColor.white
        self.nameLabel.textColor = UIColor.white
        self.weightLabel.textColor = UIColor.white
        self.hairColorLabel.textColor = UIColor.white
        self.skinColorLabel.textColor = UIColor.white
        self.eyeColorLabel.textColor = UIColor.white
        self.eyeColorLabel.textColor = UIColor.white
        self.birthYearLabel.textColor = UIColor.white
        self.genderLabel.textColor = UIColor.white
        
        guard let starWarsObj = self.starWarsPeopleObject else {print("did not work"); return}
        
        guard let name = starWarsObj.name else { print("did not unwrap"); return}
        guard let height = starWarsObj.height else { print("did not unwrap"); return}
        guard let weight = starWarsObj.weight else { print("did not unwrap"); return}
        guard let hairColor = starWarsObj.hairColor else {print("did not unwrap"); return}
        guard let skinColor = starWarsObj.skinColor else {print("did not unwrap"); return}
        guard let eyeColor = starWarsObj.eyeColor else {print("did not unwrap"); return}
        guard let birthYear = starWarsObj.birthYear else {print("did not unwrap"); return}
        guard let gender = starWarsObj.gender else {print("did not unwrap"); return}
       
        self.updateNameLabel.text = name
        self.updateHeightLabel.text = height
        self.updateWeightLabel.text = weight
        self.updateHairColorLabel.text = hairColor
        self.updateSkinColorLabel.text = skinColor
        self.updateEyeColorUpdate.text = eyeColor
        self.updateBirthYearLabel.text = birthYear
        self.updateGenderLabel.text = gender

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

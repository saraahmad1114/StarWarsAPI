//
//  PeopleDetailViewController.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 12/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class PeopleDetailViewController: UIViewController {
    
    //var starWarsPeopleObject: StarWarsPeople?
    
    var starWarsPeopleObject: StarWarsPeople? {
        didSet {
            self.updateNameLabel.text = self.starWarsPeopleObject?.name
            self.updateHeightLabel.text = self.starWarsPeopleObject?.height
            self.updateWeightLabel.text = self.starWarsPeopleObject?.weight
            self.updateHairColorLabel.text = self.starWarsPeopleObject?.hairColor
            self.updateSkinColorLabel.text = self.starWarsPeopleObject?.skinColor
            self.updateEyeColorUpdate.text = self.starWarsPeopleObject?.eyeColor
            self.updateBirthYearLabel.text = self.starWarsPeopleObject?.birthYear
            self.updateGenderLabel.text = self.starWarsPeopleObject?.gender
        }
    }
    
    @IBOutlet weak var updateNameLabel: UILabel!
    @IBOutlet weak var updateHeightLabel: UILabel!
    @IBOutlet weak var updateWeightLabel: UILabel!
    @IBOutlet weak var updateHairColorLabel: UILabel!
    @IBOutlet weak var updateSkinColorLabel: UILabel!
    @IBOutlet weak var updateEyeColorUpdate: UILabel!
    @IBOutlet weak var updateBirthYearLabel: UILabel!
    
    @IBOutlet weak var updateGenderLabel: UILabel!
    let store = StarWarsPeopleDataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard
//            let name = self.starWarsPeopleObject?.name,
//            let height = self.starWarsPeopleObject?.height,
//            let weight = self.starWarsPeopleObject?.weight
//            let hairColor = self.starWarsPeopleObject?.hairColor,
//            let skinColor = self.starWarsPeopleObject?.skinColor,
//            let eyeColor = self.starWarsPeopleObject?.eyeColor,
//            let birthYear = self.starWarsPeopleObject?.birthYear,
//            let gender = self.starWarsPeopleObject?.gender
//
//        else do {print("did not unwrap"); return}
        
        

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

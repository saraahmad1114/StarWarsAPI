//
//  StarWarsPeopleDataStore.swift
//  StarWarsAPI
//
//  Created by Flatiron School on 10/21/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class StarWarsPeopleDataStore{
    
    static let sharedInstance = StarWarsPeopleDataStore()
    private init() {}
    
    var starWarsPeopleArray = [StarWarsPeople]()
    
    func getStarWarsPeopleInformation (completion:@escaping ([StarWarsPeople]) -> ()){
        
        StarWarsPeopleAPIClient.getStarWarsPeopleInformation { (starWarsArray) in
            
            for singleDictionary in starWarsArray{
                
                guard let unwrappedSingleDictionary = singleDictionary as? [String:Any] else {print("singleDictionary did not unwrap"); return}
                
                guard let personName = unwrappedSingleDictionary["name"] as? String else {print("personName did not unwrap"); return}
                
                guard let personHeight = unwrappedSingleDictionary["height"] as? String else {print("personHeight did not unwrap"); return}
                
                guard let personWeight = unwrappedSingleDictionary["mass"] as? String else {print("personWeight did not unwrap"); return}
                
                guard let personHairColor = unwrappedSingleDictionary["hair_color"] as? String else {print("personHairColor did not unwrap"); return}
                
                guard let personSkinColor = unwrappedSingleDictionary["skin_color"] as? String else {print("personSkinColor did not unwrap"); return}
                
                guard let personEyeColor = unwrappedSingleDictionary["eye_color"] as? String else {print("personEyeColor did not unwrap"); return}
                
                guard let personBirthYear = unwrappedSingleDictionary["birth_year"] as? String else {print("personBirthYear did not unwrap"); return}
                
                guard let personGender = unwrappedSingleDictionary["gender"] as? String else{print("personGender did not unwrap"); return}
                
                let singleStarWarsPeopleObject = StarWarsPeople.init(name: personName, height: personHeight, weight: personWeight, hairColor: personHairColor, skinColor: personSkinColor, eyeColor: personEyeColor, birthYear: personBirthYear, gender: personGender)

                self.starWarsPeopleArray.append(singleStarWarsPeopleObject)
                
                print("*******************************************************")
                print(singleStarWarsPeopleObject.name)
                print(singleStarWarsPeopleObject.height)
                print(singleStarWarsPeopleObject.weight)
                print(singleStarWarsPeopleObject.hairColor)
                print(singleStarWarsPeopleObject.skinColor)
                print(singleStarWarsPeopleObject.eyeColor)
                print(singleStarWarsPeopleObject.birthYear)
                print(singleStarWarsPeopleObject.gender)
                print("*******************************************************")
                
                print(self.starWarsPeopleArray.count)
                
            }
            completion(self.starWarsPeopleArray)
        }
        
    }
    
    
    
}

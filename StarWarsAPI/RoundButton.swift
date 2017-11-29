//
//  RoundButton.swift
//  StarWarsAPI
//
//  Created by Sara Ahmad on 11/28/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear  {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
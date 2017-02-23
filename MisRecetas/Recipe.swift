//
//  Recipe.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 19/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import Foundation
import UIKit

class Recipe: NSObject {
    var name : String!
    var image : UIImage!
    var time: Int!
    var ingredients : [String]!
    var steps: [String]!
    
    init(name: String, image: UIImage, time: Int, ingredients: [String], steps: [String]) {
        self.name = name
        self.image = image
        self.time = time
        self.ingredients = ingredients
        self.steps = steps
    }
}

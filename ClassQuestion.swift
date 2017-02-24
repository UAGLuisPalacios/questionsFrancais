//
//  ClassQuestion.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 22/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import Foundation
import UIKit

class ClassQuestion: NSObject {
    var title : String!
    var image : UIImage!
    var type: String!
    var table: [String]!
    var audioName: [String]!
    
    init(title: String, image: UIImage, type: String, table: [String], audioName: [String]! ) {
        self.title = title
        self.image = image
        self.type = type
        self.table = table
        self.audioName = audioName
    }
}


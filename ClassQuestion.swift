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
    var subtitles: [[String:String]]!
    var audios: [[String:String]]!
    
    init(title: String, image: UIImage, subtitles: [[String:String]]!, audios: [[String:String]]! ) {
        self.title = title
        self.image = image
        self.subtitles = subtitles
        self.audios = audios
    }
}


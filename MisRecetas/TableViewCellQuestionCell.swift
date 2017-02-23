//
//  TableViewCellQuestionCell.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 23/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit

class TableViewCellQuestionCell: UITableViewCell {
    
    @IBOutlet weak var imageQuestion: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

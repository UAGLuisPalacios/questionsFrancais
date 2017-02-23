//
//  TableViewCellQuestionController.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 23/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit

class TableViewCellQuestionController: UIViewController {
    
    @IBOutlet weak var labelQuestionCell: UILabel!
    @IBOutlet weak var imageQuestionCell: UIImageView!
    var question : ClassQuestion!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelQuestionCell.text = question.title
        self.imageQuestionCell.image = question.image
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension TableViewCellQuestionController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailQuestionCell", for: indexPath) as! TableViewCellDetailQuestion
        
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Titulo: "
            cell.valueLabel.text = self.question.title
            break
        case 1:
            cell.keyLabel.text = "Tipo: "
            cell.valueLabel.text = self.question.type!
            break
        case 2:
            cell.keyLabel.text = "Favorita: "
            cell.valueLabel.text = "Si"
            break
        default:
            break
        }
        return cell
    }
    
}

extension TableViewCellQuestionController : UITableViewDelegate {
    
}

//
//  RecipeCellViewController.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 22/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit

class RecipeCellViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    var recipe : Recipe!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.recipeImage.image = self.recipe.image
        self.titleLabel.text = self.recipe.name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension RecipeCellViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipeCell", for: indexPath) as! RecipeDetailViewCell
        
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Nombre: "
            cell.valueLabel.text = self.recipe.name
            break
        case 1:
            cell.keyLabel.text = "Tiempo: "
            cell.valueLabel.text = "\(self.recipe.time!) min"
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

extension RecipeCellViewController : UITableViewDelegate {
    
}

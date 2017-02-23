//
//  ViewController.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 18/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var recipes : [Recipe] = []
    var questions : [ClassQuestion] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var recipe = Recipe(name: "Tortilla de patatas",
                            image: #imageLiteral(resourceName: "tortilla"),
                            time:20,
                            ingredients: ["Patatas", "Huevos", "Cebolla"],
                            steps: ["Pelar las patatas y cebollas",
                                    "Cortar las patatas y la cebolla y sofreir",
                                    "Batir los huevos y echarlos 1 minuto a la sarten con el resto"])
        recipes.append(recipe)
        recipe = Recipe(name: "Pizza",
                        image: #imageLiteral(resourceName: "pizza"),
                        time:20,
                        ingredients: ["Patatas", "Huevos", "Cebolla"],
                        steps: ["Pelar las patatas y cebollas",
                                "Cortar las patatas y la cebolla y sofreir",
                                "Batir los huevos y echarlos 1 minuto a la sarten con el resto"])
        recipes.append(recipe)
        recipe = Recipe(name: "Hamburguesa con queso",
                        image: #imageLiteral(resourceName: "hamburguesa"),
                        time:20,
                        ingredients: ["Patatas", "Huevos",  "Cebolla"],
                        steps: ["Pelar las patatas y cebollas",
                                "Cortar las patatas y la cebolla y sofreir",
                                "Batir los huevos y echarlos 1 minuto a la sarten con el resto"])
        recipes.append(recipe)
        recipe = Recipe(name: "Ensalada Cesar",
                        image: #imageLiteral(resourceName: "ensalada"),
                        time:20,
                        ingredients: ["Patatas", "Huevos", "Cebolla"],
                        steps: ["Pelar las patatas y cebollas",
                                "Cortar las patatas y la cebolla y sofreir",
                                "Batir los huevos y echarlos 1 minuto a la sarten con el resto"])
        recipes.append(recipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedRecipe = self.recipes[indexPath.row]
                let destinationViewController = segue.destination as! RecipeCellViewController
                destinationViewController.recipe = selectedRecipe
            }
        }
    }

}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView)-> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! RecipeCell
        cell.thumbnailImageView.image = recipe.image
        cell.nameLabel.text = recipe.name
        cell.timeLabel.text = "\(recipe.time!) min"
        cell.ingredientsLabel.text = "Ingredientes: \(recipe.ingredients.count)"
        
        cell.thumbnailImageView.layer.cornerRadius = 42.0
        cell.thumbnailImageView.clipsToBounds = true
        
        
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("He seleccionado fila \(indexPath.row)")
    }
    
}

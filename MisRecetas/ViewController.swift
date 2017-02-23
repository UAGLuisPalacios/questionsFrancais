//
//  ViewController.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 18/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions : [ClassQuestion] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var question = ClassQuestion(title: "Les Numerós",
                            image: #imageLiteral(resourceName: "tortilla"),
                            type: "Tableau")
        questions.append(question)
        question = ClassQuestion(title: "Les Pays",
                        image: #imageLiteral(resourceName: "pizza"),
                        type: "Tableau")
        questions.append(question)
        question = ClassQuestion(title: "La Communication en Class",
                        image: #imageLiteral(resourceName: "hamburguesa"),
                        type: "Questionner")
        questions.append(question)
        question = ClassQuestion(title: "Questioner Sur l' identidé",
                        image: #imageLiteral(resourceName: "ensalada"),
                        type: "Questionner")
        questions.append(question)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showQuestionDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let selectedQuestion = self.questions[indexPath.row]
                let destinationViewController = segue.destination as! TableViewCellQuestionController
                destinationViewController.question = selectedQuestion
            }
        }
    }

}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView)-> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let question = questions[indexPath.row]
        let cellID = "QuestionCell"
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TableViewCellQuestionCell
        cell.imageQuestion.image = question.image
        cell.titleLabel.text = question.title
        cell.typeLabel.text = question.type!
        
        cell.imageQuestion.layer.cornerRadius = 42.0
        cell.imageQuestion.clipsToBounds = true
        
        
        
        return cell
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("He seleccionado fila \(indexPath.row)")
    }
    
}

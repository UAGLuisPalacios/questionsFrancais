//
//  TableViewCellQuestionController.swift
//  MisRecetas
//
//  Created by Luis Yoshino on 23/02/17.
//  Copyright © 2017 Luis Yoshino. All rights reserved.
//

import UIKit
import AVFoundation

class TableViewCellQuestionController: UIViewController {
    var audioPlayer = AVAudioPlayer()
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
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
            break
        case 1:
            return question.table.count
            break
        default:
            return 0
            break;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailQuestionCell", for: indexPath) as! TableViewCellDetailQuestion
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.keyLabel.text = ""
                cell.valueLabel.text = self.question.table[indexPath.row]
                break
            default:
                break
            }
        case 1:
            cell.keyLabel.text = ""
            cell.valueLabel.text = self.question.table[indexPath.row]
            break;
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        switch section {
        case 0:
            title = "0 - 9"
            break
        case 1:
            title = "10 - 11"
            break
        default:
            break
        }
        return title
    }
    
}

extension TableViewCellQuestionController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: self.question.audioName[indexPath.row], ofType: "mp3" )!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }catch {
            print(error)
        }
    }
    
}

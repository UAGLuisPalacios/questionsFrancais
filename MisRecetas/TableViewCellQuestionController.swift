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
        return question.subtitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.audios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailQuestionCell", for: indexPath) as! TableViewCellDetailQuestion
        cell.keyLabel.text = ""
        cell.valueLabel.text = self.question.audios[indexPath.row]["phrase"]
         return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return question.subtitles[section]["subtitle"]
    }
    
}

extension TableViewCellQuestionController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.question.audios[indexPath.row]["audio"] != ""{
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: self.question.audios[indexPath.row]["audio"], ofType: "mp3" )!))
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }catch {
                print(error)
            }
        }else{
            
        }
        
    }
    
}

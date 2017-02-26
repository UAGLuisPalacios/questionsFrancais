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
        
        var question = ClassQuestion(title: "L'alphabet",
                                 image: #imageLiteral(resourceName: "letras"),
                                 subtitles: [
                                    ["subtitle" : " A - Z "]],
                                 audios: [
                                    ["audio" : "x1", "phrase" : "A comme Annie"],
                                    ["audio" : "x2", "phrase" : "B comme Béatrice"],
                                    ["audio" : "x3", "phrase" : "C comme Catherine"],
                                    ["audio" : "x4", "phrase" : "D comme Daniel"],
                                    ["audio" : "x5", "phrase" : "E comme Eugénie"],
                                    ["audio" : "x6", "phrase" : "F comme Fabien"],
                                    ["audio" : "x7", "phrase" : "G comme Gérard"],
                                    ["audio" : "x8", "phrase" : "H comme Hugo"],
                                    ["audio" : "x9", "phrase" : "I comme Igor"],
                                    ["audio" : "x10", "phrase" : "J comme Julie"],
                                    ["audio" : "x11", "phrase" : "K comme Karine"],
                                    ["audio" : "x12", "phrase" : "L comme Laure"],
                                    ["audio" : "x13", "phrase" : "M comme Monique"],
                                    ["audio" : "x14", "phrase" : "N comme Noémie"],
                                    ["audio" : "x15", "phrase" : "O comme Ophélie"],
                                    ["audio" : "x16", "phrase" : "P comme Paul"],
                                    ["audio" : "x17", "phrase" : "Q comme Quentin"],
                                    ["audio" : "x18", "phrase" : "R comme Renaud"],
                                    ["audio" : "x19", "phrase" : "S comme Simone"],
                                    ["audio" : "x20", "phrase" : "T comme Thibaut"],
                                    ["audio" : "x21", "phrase" : "U comme Ulysee"],
                                    ["audio" : "x22", "phrase" : "V comme Véronique"],
                                    ["audio" : "x23", "phrase" : "W comme William"],
                                    ["audio" : "x24", "phrase" : "X comme Xavier"],
                                    ["audio" : "x25", "phrase" : "Y comme Yves"],
                                    ["audio" : "x26", "phrase" : "Z comme Zoé"]
            ])
        questions.append(question)
        
        question = ClassQuestion(title: "Se Présenter",
                                 image: #imageLiteral(resourceName: "amigos"),
                                 subtitles: [
                                    ["subtitle" : ""]],
                                 audios: [
                                    ["audio" : "pr0", "phrase" : "Bonjour, je m'appele Philipp"],
                                    ["audio" : "pr1", "phrase" : "Comment tu t'appelles ?"],
                                    ["audio" : "pr2", "phrase" : "Yoko, Et toi ?"],
                                    ["audio" : "pr3", "phrase" : "Je m'appelle Clémence, et vous ?"],
                                    ["audio" : "pr4", "phrase" : "Je m'appelle James"],
                                    ["audio" : "pr5", "phrase" : "Vous vous appelez comment ?"],
                                    ["audio" : "pr6", "phrase" : "Hans"],
                                    ["audio" : "pr7", "phrase" : "Épelez, s'il vous plaít"],
                                    ["audio" : "pr8", "phrase" : "H-A-N-S"],
                                    ["audio" : "pt1", "phrase" : "Bonjour, je m'appelle Georges."],
                                    ["audio" : "pt2", "phrase" : "Jorge... avec un j?"],
                                    ["audio" : "pt3", "phrase" : "Non, pas avec un j, avec un g ! G comme Gérard."],
                                    ["audio" : "pt4", "phrase" : "Ah ! En portugais, ça s'ecrit avec un j !"]])
        questions.append(question)
        
        question = ClassQuestion(title: "La nationalité",
                                 image: #imageLiteral(resourceName: "paises"),
                                 subtitles: [
                                    ["subtitle" : ""]],
                                 audios: [
                                    ["audio" : "v1", "phrase" : "Bonjour, je m'appelle Paul Bouchard. Je suis canadien. Et vous?"],
                                    ["audio" : "v2", "phrase" : "Natacha Muller, je suis autrichienne. Enchantée !"],
                                    ["audio" : "v3", "phrase" : "Oh ! Vous vous appelez Sofia ! Moi aussi ! Vous êtes russe ?"],
                                    ["audio" : "v4", "phrase" : "Ah non ! Moi, je suis mexicaine !"],
                                    ["audio" : "v5", "phrase" : "Bonjour ! Je me présente : José Gomes. Je suis portugais. Et vous, vous êtes... ?"],
                                    ["audio" : "v6", "phrase" : "Moi, je suis suédois. Je m'appele Bjorn Lindgren. Et voici Isabbelle Moreau. Elle est française."],
                                    ["audio" : "v7", "phrase" : "Qui est-ce ?"],
                                    ["audio" : "v8", "phrase" : "C'est un journaliste. Il s'appelle Karl Rainer"],
                                    ["audio" : "v9", "phrase" : "Il est allemand ?"],
                                    ["audio" : "v10", "phrase" : "Oui, et sa femme, Alexandra, est grecque"]])
        questions.append(question)
        
        question = ClassQuestion(title: "Les Numerós",
                            image: #imageLiteral(resourceName: "numeros"),
                            subtitles: [
                                ["subtitle" : "0 - 99"]],
                            audios: [
                                ["audio" : "0", "phrase" : "0 Zero"],
                                ["audio" : "1", "phrase" : "1 Un"],
                                ["audio" : "2", "phrase" : "2 Deux"],
                                ["audio" : "3", "phrase" : "3 Trois"],
                                ["audio" : "4", "phrase" : "4 Quatre"],
                                ["audio" : "5", "phrase" : "5 Cinq"],
                                ["audio" : "6", "phrase" : "6 Six"],
                                ["audio" : "7", "phrase" : "7 Sept"],
                                ["audio" : "8", "phrase" : "8 Huit"],
                                ["audio" : "9", "phrase" : "9 Neuf"],
                                ["audio" : "10", "phrase" : "10 Dix"],
                                ["audio" : "11", "phrase" : "11 Onze"],
                                ["audio" : "12", "phrase" : "12 Douze"],
                                ["audio" : "13", "phrase" : "13 Treize"],
                                ["audio" : "14", "phrase" : "14 Quatorze"],
                                ["audio" : "15", "phrase" : "15 Quince"],
                                ["audio" : "16", "phrase" : "16 Seize"],
                                ["audio" : "17", "phrase" : "17 Dix-sept"],
                                ["audio" : "18", "phrase" : "18 Dix-Huit"],
                                ["audio" : "19", "phrase" : "19 Dix-Nuef"],
                                ["audio" : "21", "phrase" : "21 Vingt et un"],
                                ["audio" : "27", "phrase" : "27 Vingt-sept"],
                                ["audio" : "31", "phrase" : "31 Trente et un"],
                                ["audio" : "40", "phrase" : "40 Quarante"],
                                ["audio" : "41", "phrase" : "41 Quarante et un"],
                                ["audio" : "51", "phrase" : "51 Cinquante et un"],
                                ["audio" : "61", "phrase" : "61 Soixante et un"],
                                ["audio" : "70", "phrase" : "70 Soixante-dix"],
                                ["audio" : "71", "phrase" : "71 Soixante et onze"],
                                ["audio" : "72", "phrase" : "72 Soixante-douze"],
                                ["audio" : "73", "phrase" : "73 Soixante-treize"],
                                ["audio" : "78", "phrase" : "78 Soixante-dix huit"],
                                ["audio" : "79", "phrase" : "79 Soixante dix neuf"],
                                ["audio" : "80", "phrase" : "80 Quatre-vingt"],
                                ["audio" : "81", "phrase" : "81 Quatre-vingt-un"],
                                ["audio" : "82", "phrase" : "82 Quatre-vingt deux"],
                                ["audio" : "85", "phrase" : "85 Quatre-vingt cinq"],
                                ["audio" : "86", "phrase" : "86 Quatre-vingt six"],
                                ["audio" : "90", "phrase" : "90 Quatre vingt dix"],
                                ["audio" : "91", "phrase" : "91 Quatre vingt onze"],
                                ["audio" : "92", "phrase" : "92 Quatre vingt douze"],
                                ["audio" : "93", "phrase" : "93 Quatre-vingt treize"],
                                ["audio" : "94", "phrase" : "94 Quatre vingt quatorze"],
                                ["audio" : "98", "phrase" : "98 Quatre vingt dix huit"],
                                ["audio" : "99", "phrase" : "99 Quatre-vingt-dix-neuf"]
                                ])
        questions.append(question)
        
        
        
        question = ClassQuestion(title: "Salutations",
                                 image: #imageLiteral(resourceName: "saludos"),
                                 subtitles: [
                                    ["subtitle" : ""]],
                                 audios: [
                                    ["audio" : "s1", "phrase" : "Bonjour, Lucas! Tu vas bien ? "],
                                    ["audio" : "s2", "phrase" : "Oui et toi?"],
                                    ["audio" : "s3", "phrase" : "Ca va!"],
                                    ["audio" : "sa1", "phrase" : "Au Revoir, madame."],
                                    ["audio" : "sa2", "phrase" : "Au revoir, Lucas, à demain !"],
                                    ["audio" : "sb1", "phrase" : "Bonjour monsieur"],
                                    ["audio" : "sb2", "phrase" : "Bonjour monsieur, comment allez-vous ?"],
                                    ["audio" : "sb3", "phrase" : "Bien, merci et vous ?"],
                                    ["audio" : "sb4", "phrase" : "Très bien."],
                                    ["audio" : "sb5", "phrase" : "Bonne journée !"],
                                    ["audio" : "sc1", "phrase" : "Au revoir, à demain !"],
                                    ["audio" : "sc2", "phrase" : "Salut, Lucas ! Ciao ! Bonne soirée !"],
                                    ["audio" : "sd1", "phrase" : "Bonjour ! Salut Lucas !"],
                                    ["audio" : "sd2", "phrase" : "Salut! Vous allez bien ?"],
                                    ["audio" : "sd3", "phrase" : "Oui, ça va !"],
                                    ["audio" : "sd4", "phrase" : "Et toi, Théo ?"],
                                    ["audio" : "sd5", "phrase" : "Ouais, ça va."]])
        questions.append(question)
        
        question = ClassQuestion(title: "La Communication en Class",
                        image: #imageLiteral(resourceName: "estudiantes"),
                        subtitles: [
                            ["subtitle" : ""]],
                        audios: [
                            ["audio" : "a1", "phrase" : "Écoutez le dialogue"],
                            ["audio" : "a2", "phrase" : "Répétez, s'il vous plaít"],
                            ["audio" : "a3", "phrase" : "Regardez la photo"],
                            ["audio" : "a4", "phrase" : "Quelle est la différece entre tu et vous ?"],
                            ["audio" : "a5", "phrase" : "Écrivez la résponse"],
                            ["audio" : "a6", "phrase" : "Répetez la phrase"],
                            ["audio" : "a7", "phrase" : "Cochez la bonne résponse"],
                            ["audio" : "a8", "phrase" : "Soulignez les questions"],
                            ["audio" : "a9", "phrase" : "Comment ça se prononce ? "],
                            ["audio" : "a10", "phrase" : "Parlez plus fort !"],
                            ["audio" : "a11", "phrase" : "Ouvrez le livre"],
                            ["audio" : "a12", "phrase" : "Comment on dit house en français ?"],
                            ["audio" : "a13", "phrase" : "Fermez le livre"],
                            ["audio" : "a14", "phrase" : "Comment ça s'écrit ?"],
                            ["audio" : "a15", "phrase" : "Travaillez en groupe"],
                            ["audio" : "a16", "phrase" : "Travaillez par deux"],
                            ["audio" : "a17", "phrase" : "Je ne comprends pas."],
                            ["audio" : "a18", "phrase" : "Je ne sais pas."],
                            ["audio" : "a19", "phrase" : "C'est à quelle page ?"]])
        questions.append(question)
        question = ClassQuestion(title: "Questioner Sur l' identidé",
                        image: #imageLiteral(resourceName: "identidad"),
                        subtitles: [
                            ["subtitle" : ""]],
                        audios: [
                            ["audio" : "i1", "phrase" : "Excusez-moi... C'est pour une inscription... Je voudrais des informations, s'il vous plaít"],
                            ["audio" : "i2", "phrase" : "Eh bien... vous présentez une pièce d'identité, vous complétez un formulaire..."],
                            ["audio" : "i3", "phrase" : "Et vous demandez des photos ?"],
                            ["audio" : "i4", "phrase" : "Oui, une photo"],
                            ["audio" : "i5", "phrase" : "Et combien ça coûte ?"],
                            ["audio" : "i6", "phrase" : "Vous êtes étudiante ?"],
                            ["audio" : "i7", "phrase" : "Oui"],
                            ["audio" : "i8", "phrase" : "Ah ! C'est gratuit pour les étudiants."],
                            ["audio" : "j1", "phrase" : "Mademoiselle ?"],
                            ["audio" : "j2", "phrase" : "Bonjour monsieur. C'est pour une inscription. Voilà mon passeport, une photo et mon formulaire d'inscription."],
                            ["audio" : "j3", "phrase" : "Bien, merci... Oh ! Mon café ! Je suis désole !... Votre nom... Martinez. Prenom... Diane... Quelle est votre date de naissance ? Le 3 ou le 9 ?"],
                            ["audio" : "j4", "phrase" : "Le 9 ! C'est le 9 février 1995"],
                            ["audio" : "j5", "phrase" : "Bien, nationalité, française"],
                            ["audio" : "j6", "phrase" : "Oui"],
                            ["audio" : "j7", "phrase" : "Quelle sont vos coordennées... Quelle est votre adresse ? C'est le numéro 30 ? "],
                            ["audio" : "j8", "phrase" : "J'habite 30 rue du Jura."],
                            ["audio" : "j9", "phrase" : "Et quel est votre numéro de téléphone ?"],
                            ["audio" : "j10", "phrase" : "C'est le 03 24 35 29 18"],
                            ["audio" : "j11", "phrase" : "Merci."]])
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
        cell.typeLabel.text = ""
        
        cell.imageQuestion.layer.cornerRadius = 42.0
        cell.imageQuestion.clipsToBounds = true
        
        
        
        return cell
    }
}

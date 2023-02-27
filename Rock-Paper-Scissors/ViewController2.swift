//
//  ViewController2.swift
//  Rock-Paper-Scissors
//
//  Created by serhan on 25.02.23.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var UserScore: UILabel!
    @IBOutlet weak var CompScore: UILabel!
    
    var userScore = 0 { didSet{ UserScore.text = "\(userScore)" } }
    var compScore = 0 { didSet {CompScore.text = "\(compScore)" } }
    
    @IBOutlet weak var UserHand: UILabel!
    @IBOutlet weak var CompHand: UILabel!
    
    let Score = 3
    
    let randomHand = ["✋🏻","👊🏻","✌🏻"]
    var mesaj = ""
    
    @IBOutlet var selectedHandCollection: [UIButton]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController3 = segue.destination as? ViewController3 {
            viewController3.message = mesaj
        }
    }
    
    
    @IBAction func selectedHandAction(_ sender: UIButton) {
        
        if let compChosenHand = randomHand.randomElement() {
            if let chosinHand = sender.titleLabel?.text {
                if (compChosenHand == "✋🏻") && (chosinHand == "👊🏻") { compScore += 1 }
                else if (compChosenHand == "✌🏻") && (chosinHand == "👊🏻") { userScore += 1 }
                else if (compChosenHand == "👊🏻") && (chosinHand == "✋🏻") { userScore += 1 }
                else if (compChosenHand == "✋🏻") && (chosinHand == "✌🏻") { userScore += 1 }
                else if (compChosenHand == "✌🏻") && (chosinHand == "✋🏻") { compScore += 1 }
                else if (compChosenHand == "👊🏻") && (chosinHand == "✌🏻") { compScore += 1 }
                
                UserHand.text = "\(chosinHand)"
                CompHand.text = "\(compChosenHand)"
                
                if (compScore == Score) && (userScore < Score) { mesaj = "LOSS 😞" }
                else if (userScore == Score) && (compScore < Score) { mesaj = "WONN 🥳" }
            }
            
            if (compScore == Score) || (userScore == Score) {
                performSegue(withIdentifier: "page3", sender: nil)
            }
        }
    }
}

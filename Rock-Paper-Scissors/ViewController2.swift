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
    
    var userScore = 0 {
        didSet{ UserScore.text = "\(userScore)" }
        
    }
    
    var compScore = 0 {
        didSet {CompScore.text = "\(compScore)"}
    }
    
    
    @IBOutlet weak var UserHand: UILabel!
    @IBOutlet weak var CompHand: UILabel!
    
    let randomHand = ["✋🏻","👊🏻","✌🏻"]
    
    
    @IBOutlet var selectedHandCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
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
                }
                     if (compScore == 3) || (userScore == 3) {
                    performSegue(withIdentifier: "page3", sender: nil)
                         
                }
                    
                    if (compScore == 3) && (userScore < 3) {
                        UserDefaults.standard.set("LOSSS", forKey: "data")
                        print("if ")
                        print("men - \(userScore)")
                        print("compitur - \(compScore)")
                        
                       if let chap = UserDefaults.standard.object(forKey: "data") as? String {
                            print(chap)
                        }
                       
                    } else if (userScore == 3) && (compScore < 3) {
                        UserDefaults.standard.set("WINNN", forKey: "data")
                        print("else if")
                        print("men - \(userScore)")
                        print("compitur - \(compScore)")
                        
                        if let xan = UserDefaults.standard.object(forKey: "data") as? String {
                             print(xan)
                        }
                        
                    }
        }
 
    }
 
}

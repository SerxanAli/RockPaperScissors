//
//  ViewController3.swift
//  Rock-Paper-Scissors
//
//  Created by serhan on 26.02.23.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var FinalLabel: UILabel!
    
    var message = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FinalLabel.text = "\(message)"
        
    }
}

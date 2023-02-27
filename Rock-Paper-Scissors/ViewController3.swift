//
//  ViewController3.swift
//  Rock-Paper-Scissors
//
//  Created by serhan on 26.02.23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var FinalLabel: UILabel!
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        sleep(2)
        let data = UserDefaults.standard.object(forKey: "data")
      
        
        if let Data = data as? String {
            FinalLabel.text = "\(Data)"
            print(Data)
        } else {
          print("data gelmedi")
        }
            
       
        
   
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        
       // UserDefaults.standard.removeObject(forKey: "data")
        
        performSegue(withIdentifier: "page1", sender: nil)
    }
    

}

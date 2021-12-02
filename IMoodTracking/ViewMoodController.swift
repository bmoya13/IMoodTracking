//
//  ViewMoodController.swift
//  IMoodTracking
//
//  Created by Skai Fu on 12/1/21.
//

import UIKit

class ViewMoodController: UIViewController {
    
    @IBOutlet var mood1: UILabel!
    @IBOutlet var mood2: UILabel!
    @IBOutlet var mood3: UILabel!
    @IBOutlet var mood4: UILabel!
    @IBOutlet var mood5: UILabel!
    @IBOutlet var mood6: UILabel!
    @IBOutlet var mood7: UILabel!
    @IBOutlet var mood8: UILabel!
    @IBOutlet var mood9: UILabel!
    @IBOutlet var mood10: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mood1.text = "Put the loaded mood here"
        //and continue on until mood10
        print("View mood view has loaded :)")
        
    }
    
    


}
